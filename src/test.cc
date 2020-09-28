#include "test.h"
#include "ev.h"
#include "hiredis/hiredis.h"
#include "lockfreeque.h"
#include "lockfreethreadpool.h"
#include "log.h"
#include "shadowhttpserver.h"
#include "sockettool.h"
#include "spdlog/sinks/basic_file_sink.h"
#include "spdlog/sinks/daily_file_sink.h"
#include "spdlog/spdlog.h"
#include "tcpclient.h"
#include "tcprelay.h"
#include "tcpserver.h"
#include "threadpool.h"
#include <boost/locale/encoding.hpp>
#include <codecvt>
#include <condition_variable>
#include <fstream>
#include <functional>
#include <iostream>
#include <locale>
#include <mutex>
#include <re2/re2.h>
#include <regex>
#include <string>
#include <thread>
#include <unistd.h>

using namespace nethelper;

void PrintWithoutArg() {
	for (int i = 0; i < 10; ++i) {
		std::cout << "print without args" << std::endl;
		sleep(1);
	}
}

void PrintWithArg(const std::string& str) {
	std::cout << "print with arg: " << str << std::endl;
}

class Printer {
    public:
	void PrintWithArg(const std::string& str) {
		std::cout << "print with arg by printer: " << str << std::endl;
	}
};

void Test1() {
	std::cout << "==========run function without arg" << std::endl;

	nethelper::ThreadPool threadpool;
	threadpool.Start(2);
	threadpool.RunTask(std::bind(PrintWithoutArg));
}

void Test2() {
	std::cout << "==========run function with arg=============" << std::endl;

	nethelper::ThreadPool threadpool;
	threadpool.Start(2);
	threadpool.RunTask(std::bind(PrintWithArg, "hello world!"));
}
void Test3() {
	std::cout << "==========run object's function with arg=============" << std::endl;
	nethelper::ThreadPool threadpool;
	threadpool.Start(2);

	Printer printer;
	threadpool.RunTask(std::bind(&Printer::PrintWithArg, &printer, "hello world!"));
}
void Test4() {

	std::cout << "==========run object's function with arg in global "
		     "pool============="
		  << std::endl;
	Printer printer;
	nethelper::ThreadPool::RunTaskInGlobalThreadPool(
		std::bind(&Printer::PrintWithArg, &printer, "hello world!"));
}

nethelper::LockFreeQue< int > que;

void LockFreePush() {
	for (int j = 0; j < 10; j++) {
		que.Push(j);
		sleep(1);
	}
}
void LockFreePop() {

	while (1) {
		int i = que.Pop();
		if (i)
			std::cout << i << std::endl;
	}
}
int  cnt = 0;
void LockFreePushLoop() {
	while (1) {
		que.PushInThread(1);
		sleep(1);
	}
}

void LockFreePopLoop() {
	while (1) {
		int i = que.PopInThread();

		std::cout << i << std::endl;
	}
}

void Test5() {
	std::thread t1(std::bind(LockFreePush));
	std::thread t2(std::bind(LockFreePop));
	std::thread t3(std::bind(LockFreePop));
	t1.join();
	t2.join();
	t3.join();
}
void Test6() {
	std::thread t1(std::bind(LockFreePushLoop));
	std::thread t4(std::bind(LockFreePushLoop));
	std::thread t2(std::bind(LockFreePopLoop));
	std::thread t3(std::bind(LockFreePopLoop));
	std::thread t5(std::bind(LockFreePopLoop));
	std::thread t6(std::bind(LockFreePopLoop));
	t1.join();
	t2.join();
	t3.join();
	t4.join();
	t5.join();
	t6.join();
}

void Test7() {
}
void TestLockFreeThreadPool() {
	std::cout << "==========run object's function with arg=============" << std::endl;
	nethelper::LockFreeThreadPool threadpool;
	threadpool.Start(2);

	Printer printer;
	for (int i = 0; i < 10; i++)
		threadpool.RunTask(std::bind(&Printer::PrintWithArg, &printer,
					     "print" + std::to_string(i) + "!"));
}

std::wstring to_wstring(const std::string& src) {
	//   std::setlocale(LC_CTYPE, "");
	std::setlocale(LC_CTYPE, "zh_CN");
	std::wstring	       dest;
	size_t const	       wcs_len = mbstowcs(NULL, src.c_str(), 0);
	std::vector< wchar_t > tmp(wcs_len + 1);
	mbstowcs(&tmp[ 0 ], src.c_str(), src.size());

	dest.assign(tmp.begin(), tmp.end() - 1);
	printf("hh\n");

	return dest;
}

std::wstring s2ws(const std::string& s) {
	const char* str	 = s.c_str();
	size_t	    len	 = s.size() + 1;
	wchar_t*    wstr = new wchar_t[ len ];
	std::mbstowcs(wstr, str, len);
	std::wstring ret(wstr);
	delete[] wstr;
	return ret;
}
void LinuxCommandTest() {
	// HttpRequest request;
	// request.clearHeader();
	// request.appendHeader("Host:man.he.net");
	// request.appendHeader("Cache-Control: no-cache");
	// request.appendHeader("Accept: "
	// 		     "text/html,application/xhtml+xml,application/"
	// 		     "xml;q=0.9,image/webp,image/apng,*/"
	// 		     "*;q=0.8,application/signed-exchange;v=b3;q=0.9");
	// request.appendHeader("Accept-Encoding: gzip, deflate, br");

	// long status_code =
	// 	request.get("http://man.he.net/?topic=ab&section=all");
	// printf("%ld\n", status_code);
	// if (status_code == 200) {
	// 	std::string content = request.getResponse();
	// 	RE2::GlobalReplace(&content, "<.*?>", "");
	// 	// std::ofstream ofs("ab.md", std::ios::out);
	// 	// ofs << content;
	// 	std::cout << content << std::endl;
	// 	// ofs.close();
	// }
}

void LogTest() {
	spdlog::set_pattern("[%H:%M:%S %z] [%n] [%^---%L---%$] [thread %t] %v");
	auto file_logger = spdlog::daily_logger_mt("daily_logger", "logs/dailylog.txt", 2, 30);
	spdlog::set_level(spdlog::level::debug);  // Set global log level to debug
	spdlog::set_default_logger(file_logger);
	std::string str = "hello";
	spdlog::debug("ahahha{} {} {}", str, "xchvusdffd", 155);
}

struct ev_loop* loop = EV_DEFAULT;

static void conn_cb(EV_P_ ev_io* watcher, int revents) {
	LOG(trace) << "new message from fd:" << watcher->fd << std::endl;

	const int   READBUF_LEN = 1024;
	char	    readbuf[ READBUF_LEN ];
	int	    read_len;
	std::string msg = "";
	while ((read_len = recv(watcher->fd, readbuf, READBUF_LEN, MSG_DONTWAIT)) > 0) {
		readbuf[ read_len ] = '\0';
		msg += readbuf;
		// printf("readbuf:%s\n", readbuf);
	}
	LOG(debug) << msg << std::endl;
	close(watcher->fd);
	ev_io_stop(EV_A_ watcher);
}

static void listen_cb(EV_P_ ev_io* watcher, int revents) {
	LOG(trace) << "create a new connection";

	int   connfd = accept4(watcher->fd, NULL, NULL, SOCK_NONBLOCK);
	ev_io connfd_watcher;
	ev_break(loop);
	ev_io_init(&connfd_watcher, conn_cb, connfd, EV_READ);
	ev_io_start(loop, &connfd_watcher);
	ev_run(loop, 0);
}

void LibevTest() {
	int listenfd = SocketTool::CreateListenSocket(9999, 10000, false);

	ev_io listenfd_watcher;

	ev_io_init(&listenfd_watcher, listen_cb, /*STDIN_FILENO*/ listenfd, EV_READ);
	ev_io_start(loop, &listenfd_watcher);

	ev_run(loop, 0);
}

static void TcpServerThreadFunc() {
	TcpServer* tcpserver = new TcpServer(9999, 4);
	tcpserver->Start();
}

TcpClient*  tcpclient;
static void TcpClientThreadFunc() {
	tcpclient = new TcpClient();
	// tcpclient->Connect("172.16.178.135", 8888);
	// tcpclient->StartLoop();
	// tcpclient.SendMessage("hahaha", false);
}
void TcpClientTest() {
	// ThreadPool::RunTaskInGlobalThreadPool(std::bind(TcpServerThreadFunc));
	// ThreadPool::RunTaskInGlobalThreadPool(std::bind(TcpClientThreadFunc));
	TcpServerThreadFunc();
	TcpClientThreadFunc();
	// while (!tcpclient || !tcpclient->is_connected())
	// 	sleep(1);
	for (int i = 0; i < 5; ++i) {
		tcpclient->Connect("172.16.178.135", 8888);
		sleep(1);
		tcpclient->SendMessage(std::to_string(i));
	}
}

class DirectRelay : public TcpRelay {
    public:
    private:
	virtual void ServerMessageArrivedCb(TcpConnection&     connection,
					    const std::string& message) override {
		this->tcpclient_->Connect("172.16.178.135", 8888);
		this->tcpclient_->SendMessage(message);
		LOG(debug) << "forward to remote server : " << message;
		// this->tcpclient_->DisConnect();
	}
	virtual void ClientMessageArrivedCb(TcpConnection&     connection,
					    const std::string& message) override {
		LOG(debug) << "forward to proxy client:" << message;
		this->tcpserver_->SendMessage(this->connection_with_proxyclient_, message, false);
	}
};

void TcprelayTest() {

	DirectRelay* relay = new DirectRelay();
	relay->Run(9999);
}

void ShadowhttpServerTest() {
	ShadowhttpServer* shadowhttp_server = new ShadowhttpServer();
	shadowhttp_server->Run(8080);
}

void RegexTest() {
	std::string				    text    = "Date:2017-10-10 ~ 2017-10-15";
	std::string				    pattern = "(\\d{4})-(\\d{2})-(\\d{2})";
	std::regex				    express(pattern);
	std::match_results< std::string::iterator > results1;
	if (std::regex_search(text.begin(), text.end(), results1, express)) {
		//使用迭代器遍历, 这里的迭代器实际上是指向 std::sub_match 的指针
		std::match_results< std::string::iterator >::const_iterator iter;
		for (iter = results1.begin(); iter != results1.end(); iter++) {
			std::cout << iter->length() << ": " << iter->str() << std::endl;
		}
	}
}

void RegexTest2() {
	std::string text = "CONNECT mtalk.google.com:443 HTTP/1.1 "
			   "Host : mtalk.google.com : 443 "
			   "Proxy-Connection : keep-alive ";
	std::string				    pattern = "CONNECT\\s(.*):(\\d+)\\b";
	std::regex				    express(pattern);
	std::match_results< std::string::iterator > results1;
	if (std::regex_search(text.begin(), text.end(), results1, express)) {
		//使用迭代器遍历, 这里的迭代器实际上是指向 std::sub_match 的指针
		std::cout << results1[ 1 ].str() << std::endl;
		std::cout << results1[ 2 ].str() << std::endl;
		// std::match_results< std::string::iterator >::const_iterator iter;
		// for (iter = results1.begin(); iter != results1.end(); iter++)
		// 	std::cout << iter->str() << std::endl;
	}
}