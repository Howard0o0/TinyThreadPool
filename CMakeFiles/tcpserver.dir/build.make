# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/howard/work/TinyThreadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/howard/work/TinyThreadPool

# Include any dependencies generated for this target.
include CMakeFiles/tcpserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpserver.dir/flags.make

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o: src/base/lockfreethreadpool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o -c /home/howard/work/TinyThreadPool/src/base/lockfreethreadpool.cc

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/base/lockfreethreadpool.cc > CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.i

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/base/lockfreethreadpool.cc -o CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.s

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.requires

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.provides: CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.provides

CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o


CMakeFiles/tcpserver.dir/src/base/log.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/base/log.cc.o: src/base/log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcpserver.dir/src/base/log.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/base/log.cc.o -c /home/howard/work/TinyThreadPool/src/base/log.cc

CMakeFiles/tcpserver.dir/src/base/log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/base/log.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/base/log.cc > CMakeFiles/tcpserver.dir/src/base/log.cc.i

CMakeFiles/tcpserver.dir/src/base/log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/base/log.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/base/log.cc -o CMakeFiles/tcpserver.dir/src/base/log.cc.s

CMakeFiles/tcpserver.dir/src/base/log.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/base/log.cc.o.requires

CMakeFiles/tcpserver.dir/src/base/log.cc.o.provides: CMakeFiles/tcpserver.dir/src/base/log.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/base/log.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/base/log.cc.o.provides

CMakeFiles/tcpserver.dir/src/base/log.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/base/log.cc.o


CMakeFiles/tcpserver.dir/src/base/regextool.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/base/regextool.cc.o: src/base/regextool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tcpserver.dir/src/base/regextool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/base/regextool.cc.o -c /home/howard/work/TinyThreadPool/src/base/regextool.cc

CMakeFiles/tcpserver.dir/src/base/regextool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/base/regextool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/base/regextool.cc > CMakeFiles/tcpserver.dir/src/base/regextool.cc.i

CMakeFiles/tcpserver.dir/src/base/regextool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/base/regextool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/base/regextool.cc -o CMakeFiles/tcpserver.dir/src/base/regextool.cc.s

CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.requires

CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.provides: CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.provides

CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/base/regextool.cc.o


CMakeFiles/tcpserver.dir/src/base/thread.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/base/thread.cc.o: src/base/thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tcpserver.dir/src/base/thread.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/base/thread.cc.o -c /home/howard/work/TinyThreadPool/src/base/thread.cc

CMakeFiles/tcpserver.dir/src/base/thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/base/thread.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/base/thread.cc > CMakeFiles/tcpserver.dir/src/base/thread.cc.i

CMakeFiles/tcpserver.dir/src/base/thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/base/thread.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/base/thread.cc -o CMakeFiles/tcpserver.dir/src/base/thread.cc.s

CMakeFiles/tcpserver.dir/src/base/thread.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/base/thread.cc.o.requires

CMakeFiles/tcpserver.dir/src/base/thread.cc.o.provides: CMakeFiles/tcpserver.dir/src/base/thread.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/base/thread.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/base/thread.cc.o.provides

CMakeFiles/tcpserver.dir/src/base/thread.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/base/thread.cc.o


CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o: src/base/threadpool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o -c /home/howard/work/TinyThreadPool/src/base/threadpool.cc

CMakeFiles/tcpserver.dir/src/base/threadpool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/base/threadpool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/base/threadpool.cc > CMakeFiles/tcpserver.dir/src/base/threadpool.cc.i

CMakeFiles/tcpserver.dir/src/base/threadpool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/base/threadpool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/base/threadpool.cc -o CMakeFiles/tcpserver.dir/src/base/threadpool.cc.s

CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.requires

CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.provides: CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.provides

CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o


CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o: src/net/epolltool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o -c /home/howard/work/TinyThreadPool/src/net/epolltool.cc

CMakeFiles/tcpserver.dir/src/net/epolltool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/epolltool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/epolltool.cc > CMakeFiles/tcpserver.dir/src/net/epolltool.cc.i

CMakeFiles/tcpserver.dir/src/net/epolltool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/epolltool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/epolltool.cc -o CMakeFiles/tcpserver.dir/src/net/epolltool.cc.s

CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o


CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o: src/net/httpcontext.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o -c /home/howard/work/TinyThreadPool/src/net/httpcontext.cc

CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/httpcontext.cc > CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.i

CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/httpcontext.cc -o CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.s

CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o


CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o: src/net/httpmessagecodec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o -c /home/howard/work/TinyThreadPool/src/net/httpmessagecodec.cc

CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/httpmessagecodec.cc > CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.i

CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/httpmessagecodec.cc -o CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.s

CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o


CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o: src/net/httpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o -c /home/howard/work/TinyThreadPool/src/net/httpserver.cc

CMakeFiles/tcpserver.dir/src/net/httpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/httpserver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/httpserver.cc > CMakeFiles/tcpserver.dir/src/net/httpserver.cc.i

CMakeFiles/tcpserver.dir/src/net/httpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/httpserver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/httpserver.cc -o CMakeFiles/tcpserver.dir/src/net/httpserver.cc.s

CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o


CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o: src/net/shadowhttpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o -c /home/howard/work/TinyThreadPool/src/net/shadowhttpserver.cc

CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/shadowhttpserver.cc > CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.i

CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/shadowhttpserver.cc -o CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.s

CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o


CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o: src/net/sockettool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o -c /home/howard/work/TinyThreadPool/src/net/sockettool.cc

CMakeFiles/tcpserver.dir/src/net/sockettool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/sockettool.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/sockettool.cc > CMakeFiles/tcpserver.dir/src/net/sockettool.cc.i

CMakeFiles/tcpserver.dir/src/net/sockettool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/sockettool.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/sockettool.cc -o CMakeFiles/tcpserver.dir/src/net/sockettool.cc.s

CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o


CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o: src/net/tcpclient.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o -c /home/howard/work/TinyThreadPool/src/net/tcpclient.cc

CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/tcpclient.cc > CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.i

CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/tcpclient.cc -o CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.s

CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o


CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o: src/net/tcpconnection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o -c /home/howard/work/TinyThreadPool/src/net/tcpconnection.cc

CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/tcpconnection.cc > CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.i

CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/tcpconnection.cc -o CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.s

CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o


CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o: src/net/tcprelay.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o -c /home/howard/work/TinyThreadPool/src/net/tcprelay.cc

CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/tcprelay.cc > CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.i

CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/tcprelay.cc -o CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.s

CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o


CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o: src/net/tcpserver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o -c /home/howard/work/TinyThreadPool/src/net/tcpserver.cc

CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/net/tcpserver.cc > CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.i

CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/net/tcpserver.cc -o CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.s

CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.requires

CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.provides: CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.provides

CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o


CMakeFiles/tcpserver.dir/src/main.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/main.cc.o: src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/tcpserver.dir/src/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/main.cc.o -c /home/howard/work/TinyThreadPool/src/main.cc

CMakeFiles/tcpserver.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/main.cc > CMakeFiles/tcpserver.dir/src/main.cc.i

CMakeFiles/tcpserver.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/main.cc -o CMakeFiles/tcpserver.dir/src/main.cc.s

CMakeFiles/tcpserver.dir/src/main.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/main.cc.o.requires

CMakeFiles/tcpserver.dir/src/main.cc.o.provides: CMakeFiles/tcpserver.dir/src/main.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/main.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/main.cc.o.provides

CMakeFiles/tcpserver.dir/src/main.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/main.cc.o


CMakeFiles/tcpserver.dir/src/test.cc.o: CMakeFiles/tcpserver.dir/flags.make
CMakeFiles/tcpserver.dir/src/test.cc.o: src/test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/tcpserver.dir/src/test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpserver.dir/src/test.cc.o -c /home/howard/work/TinyThreadPool/src/test.cc

CMakeFiles/tcpserver.dir/src/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpserver.dir/src/test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/howard/work/TinyThreadPool/src/test.cc > CMakeFiles/tcpserver.dir/src/test.cc.i

CMakeFiles/tcpserver.dir/src/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpserver.dir/src/test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/howard/work/TinyThreadPool/src/test.cc -o CMakeFiles/tcpserver.dir/src/test.cc.s

CMakeFiles/tcpserver.dir/src/test.cc.o.requires:

.PHONY : CMakeFiles/tcpserver.dir/src/test.cc.o.requires

CMakeFiles/tcpserver.dir/src/test.cc.o.provides: CMakeFiles/tcpserver.dir/src/test.cc.o.requires
	$(MAKE) -f CMakeFiles/tcpserver.dir/build.make CMakeFiles/tcpserver.dir/src/test.cc.o.provides.build
.PHONY : CMakeFiles/tcpserver.dir/src/test.cc.o.provides

CMakeFiles/tcpserver.dir/src/test.cc.o.provides.build: CMakeFiles/tcpserver.dir/src/test.cc.o


# Object files for target tcpserver
tcpserver_OBJECTS = \
"CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o" \
"CMakeFiles/tcpserver.dir/src/base/log.cc.o" \
"CMakeFiles/tcpserver.dir/src/base/regextool.cc.o" \
"CMakeFiles/tcpserver.dir/src/base/thread.cc.o" \
"CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o" \
"CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o" \
"CMakeFiles/tcpserver.dir/src/main.cc.o" \
"CMakeFiles/tcpserver.dir/src/test.cc.o"

# External object files for target tcpserver
tcpserver_EXTERNAL_OBJECTS =

bin/tcpserver: CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/base/log.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/base/regextool.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/base/thread.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/main.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/src/test.cc.o
bin/tcpserver: CMakeFiles/tcpserver.dir/build.make
bin/tcpserver: CMakeFiles/tcpserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/howard/work/TinyThreadPool/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable bin/tcpserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpserver.dir/build: bin/tcpserver

.PHONY : CMakeFiles/tcpserver.dir/build

CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/base/lockfreethreadpool.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/base/log.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/base/regextool.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/base/thread.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/base/threadpool.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/epolltool.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/httpcontext.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/httpmessagecodec.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/httpserver.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/shadowhttpserver.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/sockettool.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/tcpclient.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/tcpconnection.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/tcprelay.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/net/tcpserver.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/main.cc.o.requires
CMakeFiles/tcpserver.dir/requires: CMakeFiles/tcpserver.dir/src/test.cc.o.requires

.PHONY : CMakeFiles/tcpserver.dir/requires

CMakeFiles/tcpserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpserver.dir/clean

CMakeFiles/tcpserver.dir/depend:
	cd /home/howard/work/TinyThreadPool && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/howard/work/TinyThreadPool /home/howard/work/TinyThreadPool /home/howard/work/TinyThreadPool /home/howard/work/TinyThreadPool /home/howard/work/TinyThreadPool/CMakeFiles/tcpserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcpserver.dir/depend

