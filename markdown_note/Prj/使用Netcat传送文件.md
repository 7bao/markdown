# 使用Netcat传送文件
---
## 1.接收终端运行
> nc -l -p 1234 > out.file
- 端口号为1234
---
## 2.发送终端运行
> nc -w 3 [destination] 1234 < out.file
- destiation一般为IP地址
---
### PS:
- [*参考网址*](https://nakkaya.com/2009/04/15/using-netcat-for-file-transfers/)
---