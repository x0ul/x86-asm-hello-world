org 0x7c00

[bits 16]

main:
    mov ah, 0x0e
    mov si, hello_msg
print_string:
    lodsb
    cmp al, 0
    je end_print
    int 0x10
    jmp print_string


end_print:
    jmp $

hello_msg: db 'jello world', 0

times 510-($-$$) db 0
dw 0xaa55
