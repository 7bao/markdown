# 使用Valgrind发现Linux程序的内存问题
## 1.Valgrand概述

- Valgrind是一套Linux下，开放源代码（GPL V2）的仿真调试工具的集合。Valgrind由内核（core）以及基于内核的其他调试工具组成。内核类似于一个框架（framework），它模拟了一个CPU环境，并提供服务给其他工具；而其他工具则类似于插件 (plug-in)，利用内核提供的服务完成各种特定的内存调试任务.
---
## 2.Valgrand使用
1.准备好程序
- 为了使valgrind发现的错误更精确，如能够定位到源代码行，建议在编译时加上-g参数，编译优化选项请选择O0，虽然这会降低程序的执行效率。
- 这里用到的示例程序文件名为：sample.c（如下所示）,选用的编译器为gcc
> gcc -g -O0 sample.c -0 sample
 
2.在valgrand下,运行程序
- 调用vlagrind的通用格式
> vlagrind [valgrind-options] your-prog [your-prog-options]
- 调试example
> valgrind <Path>/sample


3.分析valgrand的输出信息
- 以下是运行上述命令后的输出
![](https://www.ibm.com/developerworks/cn/linux/l-cn-valgrind/images/image005.jpg)
- 左边显示类似行号的数字（32372）表示的是 Process ID。
- 最上面的红色方框表示的是 valgrind 的版本信息。
- 中间的红色方框表示 valgrind 通过运行被测试程序，发现的内存问题。通过阅读这些信息，可以发现：
1.这是一个对内存的非法写操作，非法写操作的内存是4 bytes。
2.发生错误时的函数堆栈，以及具体的源代码行号。
3.非法写操作的具体地址空间。
- 最下面的红色方框是对发现的内存问题和内存泄露问题的总结。内存泄露的大小（40 bytes）也能够被检测出来。
示例程序显然有两个问题，一是fun函数中动态申请的堆内存没有释放；二是对堆内存的访问越界。这两个问题均被valgrind发现。
  
---
### ps:
[*参考网址*](https://www.ibm.com/developerworks/cn/linux/l-cn-valgrind/)
