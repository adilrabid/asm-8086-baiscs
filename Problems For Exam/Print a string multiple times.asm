; Print a string multiple times

data segment
    ; add your data here!
    msg db "hello there",13,10,"$"
ends

code segment
main proc
; set segment registers:
    mov ax, @data
    mov ds, ax
    
    mov cx, 04h
    
    lea dx, msg
    l1: mov ah, 09h
        int 21h
    
    loop l1
        mov ah, 09h
        int 21h
    
 main endp   
ends      

end main


end start ; set entry point and stop the assembler.
