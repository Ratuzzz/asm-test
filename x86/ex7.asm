global _start

_start:
    call func
    mov eax, 1
    mov ebx, 0
    int 0x80

func: 
    push ebp
    mov ebp, esp    ; saving current stack pointer
    sub esp, 2      ; allocate 2 bytes in the stack
    mov [esp], byte 'H'
    mov [esp+1], byte 'i'
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, esp    ; bytes to write
    mov edx, 2      ; number of bytes to write
    int 0x80        ; perfoms system call
    mov esp, ebp    ; return to initial stack pointer
    pop ebp
    ret
