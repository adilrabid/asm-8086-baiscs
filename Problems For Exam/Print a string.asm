data segment
     str1 dw "Mymensing Engineering College $"
ends

code segment
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, str1
    mov ah, 09h
    int 21h
    
    mov ax, 12    
main endp

ends

END MAIN

