;==========================================
;===== Conditional/Unconditional Jump =====
;==========================================

data segment
    addition dw 20                  ; defining a variable with the same name of a label for 
                                    ; testing defference name detection.
ends

code segment
start:
    
    mov ax, 02
    mov bx, 05
    
    jmp @addition                   ; Call label where the code executin will jump
    
    mov cx, 23h                     ; This line is skipped due to jump
    
    subtraction:                    ; Define a label.
    sub ax, bx
    jmp the_end                     ; Jump to the end of the program
    
    @addition:                      ; Define a label. Label must be unique.
                                    ; it is a good practince to add a '@' in fornt of a label
                                    ; it will help to differentiate between a variable and a label.
    add ax, bx
    jmp subtraction                 ; Jump to an another label
    
    the_end:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
