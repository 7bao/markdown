# 给Linux扩展硬盘

## 1.格式化分区

> ### 1.1.查看分区
>
> sudo fdisk -l
>
> ### 1.2格式化分区
>
> sudo mkdf -t ext4 /dev/sda6

## 2.修改分区挂载信息

> ### 2.1 查看分区的uuid
>
> sudo blkid
>
> 2.2 修改fstab添加挂载点
>
> vim /etc/fstab

-----

