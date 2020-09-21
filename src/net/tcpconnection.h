#ifndef TINYHTTPSERVER_TCPCONNECTION_H
#define TINYHTTPSERVER_TCPCONNECTION_H

#include <ev++.h>
#include <memory>
#include <string>

struct SendBuffer {
	std::string buffer;
	size_t	    sent_offset;

	bool IsEmpty() {
		return sent_offset == buffer.size();
	}
};

class TcpConnection;

struct TcpConnectionContext {
	ev::io	       io_watcher;
	TcpConnection* tcpconnection;
	bool	       close_on_sent;
	TcpConnectionContext(TcpConnection* _tcpconnection)
		: tcpconnection(_tcpconnection), close_on_sent(false) {
	}
};

class TcpConnection {
    public:
	TcpConnection(int connection_fd)
		: receive_context_(this), send_context_(this), connection_fd_(connection_fd) {
	}
	~TcpConnection();
	void	    Disconnect();
	int	    connection_fd() const;
	ev::io&	    receive_message_watcher();
	ev::io&	    send_message_watcher();
	void	    PushMessageIntoSendBuffer(const std::string& message, bool close_on_sent);
	SendBuffer& send_buffer();

    private:
	TcpConnectionContext receive_context_;
	TcpConnectionContext send_context_;
	SendBuffer	     send_buffer_;
	int		     connection_fd_;
};

#endif