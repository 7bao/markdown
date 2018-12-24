<div align='left'><img src="/home/bqq/图片/zc.png"  style=' width:200px'  />
<h1><center>Linux下调试基本操作</h1></center>

## 1.接收终端运行
> nc -l -p 1234 > out.file
- 端口号为1234
---
## 2.发送终端运行
> nc -w 3 [destination] 1234 < out.file
- destiation一般为IP地址
---
## 3.进入目录

> 程序保存在tffs0/bns目录下，使用cd命令进入
>
> cd tffs0/bns

## 4.运行程序

> 使用chmod命令加运行权限
>
> chmod 777 name
>
> 使用./运行程序
>
> ./name

## 5.地址及其名称

|  | IP地址 | 组播地址 | 程序名 |
| :---: | :-------: | :-----------: | :-------: |
| 0号板卡 | 10.0.3.70 | 239.1.3.70 | send_slave70 |
| 1号板卡 | 10.0.3.71 | 239.1.3.70 | send_slave71 |


### PS:

- [*参考网址*](https://nakkaya.com/2009/04/15/using-netcat-for-file-transfers/)
---