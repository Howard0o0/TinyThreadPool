#include "shadowhttpserver.h"
#include "httpmessagecodec.h"
#include "sockettool.h"

/* private methods */

void ShadowhttpServer::ServerMessageArrivedCb(TcpConnection&	 connection,
					      const std::string& message) {
	LOG(debug) << "shadowhttp server receive [len:" << message.size() << "] :" << message;
	this->HandleHttpProxyMessage(connection, *const_cast< std::string* >(&message));
}
void ShadowhttpServer::ClientMessageArrivedCb(TcpConnection&	 connection,
					      const std::string& message) {

	std::string remote_socket =
		connection.remote_ip() + std::to_string(connection.remote_port());
	LOG(debug) << "remote socket : " << remote_socket;
	if (!this->tunnel_dict_.count(remote_socket)) {
		LOG(error) << "can't find tunnel";
		return;
	}
	TcpConnection* conn_with_client =
		this->tunnel_dict_[ remote_socket ].connection_with_client;
	this->tcpserver_->SendMessage(conn_with_client, message);
}
void ShadowhttpServer::HandleHttpProxyMessage(TcpConnection& connection, std::string& message) {
	enum HttpProxyMessageType http_proxymessage_type =
		this->codec_.GetHttpProxyMessageType(message);

	if (http_proxymessage_type == CONNECT)
		LOG(debug) << "CONNECT";
	else if (http_proxymessage_type == HTTPFORWARD)
		LOG(debug) << "HTTPFORWARD";
	else
		LOG(debug) << "FORWARD";

	std::string client_socket =
		connection.remote_ip() + std::to_string(connection.remote_port());
	std::string remote_socket;
	if (http_proxymessage_type == CONNECT || http_proxymessage_type == HTTPFORWARD) {
		/* build forward tunnel and store tunnel in dict */
		struct SockAddress remote_addr = this->codec_.ScratchRemoteAddress(message);
		if (remote_addr.ip.empty())
			return;
		TcpConnection* connection_with_remote =
			this->tcpclient_->Connect(remote_addr.ip, remote_addr.port);
		if (!connection_with_remote) {
			LOG(error) << "connect to " << connection_with_remote->remote_ip() << ":"
				   << connection_with_remote->remote_port() << "failed";
			return;
		}

		Tunnel tunnel(&connection, connection_with_remote);
		remote_socket = connection_with_remote->remote_ip()
				+ std::to_string(connection_with_remote->remote_port());
		this->tunnel_dict_[ client_socket ] = tunnel;
		this->tunnel_dict_[ remote_socket ] = tunnel;

		if (http_proxymessage_type == CONNECT) {
			this->ResponseProxyclient(&connection, ESTABLISH);
			return;
		}
		LOG(debug) << "client socket :" << client_socket;
	}

	if (http_proxymessage_type == HTTPFORWARD && this->codec_.RefactorUrlpath(message) == false)
		return;

	/* forward message to remote */
	if (!this->tunnel_dict_.count(client_socket)) {
		LOG(debug) << "client socket :" << client_socket;
		LOG(error) << "can't find tunnel";
		return;
	}
	TcpConnection* connection_with_remote =
		this->tunnel_dict_[ client_socket ].connection_with_remote;
	if (this->tcpclient_->SendMessage(connection_with_remote, message) == false)
		LOG(error) << "send to " << connection_with_remote->remote_ip() << ":"
			   << connection_with_remote->remote_port() << "failed : " << message;
	LOG(debug) << "forward data success : " << message;

	// if (http_proxymessage_type == HttpProxyMessageType::CONNECT) {
	// 	struct SockAddress remote_addr = this->codec_.ScratchRemoteAddress(message);
	// 	LOG(debug) << "handle CONNECT " << remote_addr.ip << ":" << remote_addr.port;
	// 	if (this->tcpclient_->Connect(remote_addr.ip, remote_addr.port) == true) {
	// 		LOG(debug) << "tunnel with remote established";
	// 		this->ResponseProxyclient(ESTABLISH);
	// 	}
	// 	else {
	// 		LOG(debug) << "tunnel with remote build failed";
	// 		this->ResponseProxyclient(CONNECT_TIMEOUT);
	// 	}
	// }
	// else if (http_proxymessage_type == HttpProxyMessageType::HTTPFORWARD) {
	// 	LOG(debug) << "handle HTTPFORWARD";
	// 	struct SockAddress remote_addr = this->codec_.ScratchRemoteAddress(message);
	// 	if (this->tcpclient_->Connect(remote_addr.ip, remote_addr.port) == false) {
	// 		LOG(error) << "http forward connect to " << remote_addr.ip << ":"
	// 			   << remote_addr.port << " failed";
	// 		return;
	// 	}
	// 	std::string refactored_message = message;
	// 	if (this->codec_.RefactorUrlpath(refactored_message) == false)
	// 		return;
	// 	this->tcpclient_->SendMessage(refactored_message);
	// }
	// else {

	// 	LOG(debug) << "handle FORWARD";
	// 	// FORWARD
	// 	if (!this->tcpclient_->is_connected())
	// 		return;
	// 	this->tcpclient_->SendMessage(message);
	// }
}

void ShadowhttpServer::ResponseProxyclient(TcpConnection*		       connection,
					   enum ResponseProxyclientMessageType message_type) {
	std::string response_message;
	switch (message_type) {
	case ESTABLISH:
		response_message = "HTTP/1.1 200 Connection Established\r\n\r\n";
		break;
	case CONNECT_TIMEOUT:
		response_message = "HTTP/1.1 504 Gateway Time-out\r\n\r\n";
		break;
	default:
		LOG(error) << "message_type illegal";
		return;
	}

	if (this->tcpserver_->SendMessage(connection, response_message) == false)
		LOG(error) << "send to " << connection->remote_ip() << ":"
			   << connection->remote_port() << "failed : " << response_message;
}
/* end of private methods */