global add42         ; export label

add42:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8] ; Get first parameter (4 bytes)
                     ;  +4 for return address
                     ;  +4 for old ebp
                     ;  = 8 bytes for first argument
    add eax, 42      ; Add 42 to the value
    mov esp, ebp    
    pop ebp
    ret
