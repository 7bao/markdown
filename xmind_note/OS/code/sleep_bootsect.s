!sectboot function:
!   1,init myself
!   2,read setup and head
SYSSIZE = 0x3000
.globl begtext,
        begdata,
        begbss,
        endtext,
        enddata,
        endbss

.text                       !?????????
begtext:
.data
begdata:
.bss
begbss:
.text

SETUPLEN = 4

BOOTSEG  = 0x07C0

INITSEG  = 0x9000           !new address for load sectboot
SETUPSEG = 0x9020           !setup load address
SYSSEG   = 0x1000           !head load address

ENDSEG   = SYSSEG + SYSIZE  !where to stop loading

ROOT_DEV = 0x306 

entry start                 !指定程序入口
start:
    mov ax,#BOOTSEG
    mov ds,ax

    mov ax,#INITSEG
    mov es,ax

    mov cx, #356
    
    sub si,si
    sub di,di
    
    rep
    movw
    
    jmpi go,INITSEG
go:
    mov ax,cs    

    mov ds,ax               !data seg set 
    mov es,ax    

    mov ss,ax               !stack seg set 
    mov sp,#0xff00


load_setup:
    mov dx,#0x0
    mov cx,#0x2
    mov bx,#0x200
    mov ax,#0x200 + SETUPLEN

    int 0x13                !Direct Disk Server--int 13h

    jnc ok_load_setup



ok_load_setup:
    mov dl,#0x00
    mov ax,#0x0800
    int 13
    mov ch,#0x00
    seg cs
    mov sectors,cs
