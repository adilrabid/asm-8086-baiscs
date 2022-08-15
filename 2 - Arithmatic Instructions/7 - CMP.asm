;=====================================
;===== CMP (compare) Instruction =====
;=====================================
             
; CMP (compare) instruction performs an implied substraction of a source operand from
; destination operand. Neither operand is modified.

; Syntax: CMP destination, source

;=== Compare Senarions in CMP           
;____________________________________________
;       Condition        |         Flags    |
;--------------------------------------------  
; Destination = Source   |   ZF=1      CF=0 |
; Destination < Source   |   ZF=0      CF=1 |
; Destination > Source   |   ZF=0      CF=0 |
;--------------------------------------------           
             
data segment
    addition dw 20
ends

code segment
start:
    ; Destination = Source
    mov ax, 10
    cmp ax, 10
    
    ; Destination < Source
    mov ax, 10
    cmp ax, 12
    
    ; Destination > Source
    mov ax, 10
    cmp ax, 7
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
