# Zookeeper

## System Requirements

Supported Platforms

* **client** is the Java client libray, used by application to connect to a ZooKeeper ensemble.
* **server** is the Java server that runs on the ZooKeeper ensemble nodes.
* **Contrib** refers to multiple optional add-on components.

Required Software

ZooKeeper runs in java, release 1.8 or greater(JDK 8 LTS, JDK 11 LTS, JDK 12 - Java 9 and 10 are not supported). It runs as an *ensemble* of ZooKeeper servers. Three ZooKeeper server is the minimum recommended size for an ensemble, and we also recommend that they run on sparate machines.

## clustered(Multi-Server) Setup

1. Install the Java SDK.
2. Set the Java heap size.
3. Install the ZooKeeper Server Package.
4. Create a configuration file. 

选举机制

监听原理



概述

开源的分布式的（多台服务器处理一件事）为应用程序提供协调服务的（）apache项目

工作机制

观察者模式的分布式服务管理模式。他负责存储和管理大家都关心的数据，接受观察者的注册，一旦这些数据的状态发生变化，zookeeper就将负责通知已经在zookeeper上注册的那些观察者做出响应的反应。 

文件系统+通知机制 = zookeeper。