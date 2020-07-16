#ifndef TINYHTTPSERVER_WORKER_H
#define TINYHTTPSERVER_WORKER_H
#include "lockfreethreadpool.h"
#include <functional>

using namespace tinythreadpool;

namespace ths {

typedef std::function< void(int sockfd, std::string msg) > OnMsgCallback;

class Worker {
    public:
	Worker(const OnMsgCallback& cb);
	void HandleResponse(int client_fd);

    private:
	LockFreeThreadPool threadpool_;
	LockFreeQue< int > fd_translator_;
	int		   wakeup_fd_;
	OnMsgCallback      on_msg_cb_;

	void	WorkFunc();
	std::string ReadMsg(int client_fd);
	void	OnMsgArrived(int sockfd, std::string msg);
};

}  // namespace ths

#endif