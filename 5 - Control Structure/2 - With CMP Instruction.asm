;==========================================
;===== CMP (compare) Instruction =====
;==========================================

data segment
    addition dw 20
    success_str dw "Win"
ends

code segment
start:
    
    mov ah, 09
    mov al, 07
    cmp al, 07
    JE @TRUE
    
    @TRUE:
    lea dx, success_str
    mov ah, 09h
    int 21h 
    
    @FALSE:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
