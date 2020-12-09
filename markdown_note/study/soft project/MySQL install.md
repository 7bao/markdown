# MySQL

## 1.Install

> Connector/C++ binary distributions

## 2.Build Tools and Configuration Settings

> INFO_BIN: describres the enviroment 
>
> INFO_SRC: MySQL version

## 3.Connector/C++ Header Files

~~~c++
#include <mysqlx/xdevapi.h>
~~~

## 4.Link Libraries

> OpenSSL

> To build code that uses X DevAPI or X DevAPI for C, add `-lmysqlcppconn8` to the linker options. 
>
> Use an `-L` linker option to specify `$MYSQL_CONCPP_DIR/lib64` (64-bit libraries) or `$MYSQL_CONCPP_DIR/lib` (32-bit libraries), where `$MYSQL_CPPCONN_DIR` is the Connector/C++ installation location.

## 5.Compile

Makefile

~~~makefile
MYSQL_CONCPP_DIR = Connector/C++ installation location
CPPFLAGS = -I $(MYSQL_CONCPP_DIR)/include -L $(MYSQL_CONCPP_DIR)/lib64
LDLIBS = -lmysqlcppconn8
CXXFLAGS = -std=c++11
app : app.cc
~~~

command line

~~~shell
g++ -std=c++11 -I .../include -L .../lib64 app.cc -lmysqlcppconn8 -o app
~~~

---

## 1.Abstract

>  Connector/C++ 8.0 is highly recommended for use with MySQL Server ```8.0 and 5.7```. Please upgrade to Connector/C++ 8.0.

## 2.Install Connector/c++

> MySQL Server version:```5.7.31```;

> Installing connector/c++ from a ```binary distribution```;

> Installation ```Linux-Generic 64bit``` on Linux and installation using a tar Package.

## 3. Building Connector/C++ Applications

