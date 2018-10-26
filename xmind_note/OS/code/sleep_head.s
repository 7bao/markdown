.text 
.globl _idt, _gdt, _pg_dir, _tmp_floppy_area
_pag_dir:
startup_32:
    movl $0x10, %eax

