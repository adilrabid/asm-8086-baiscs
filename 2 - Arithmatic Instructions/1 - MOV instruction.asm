; ==============================
; ====== MOV instruction: ======
; ==============================    

; It is used to transfer data between registers, a register and a memory location and it is used to
; copy a number directly into a register or a memory location.

; Syntax: MOV destination, source 

; Note: here destination in operand1 and source is operand2.
                                                                        
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization

DATA SEGMENT          ;start of data segment

ENDS                  ;end of data segment
 
; ===== Define Stack Segment =====
; Operations related to stack for example push, pop top of the stack etc. 
STACK SEGMENT         ;start of stack segment
   
ENDS                  ;end of stack segment

; ===== Define Code Segment =====
; Define Main function/procedure
; Add logic/instructions
CODE SEGMENT          ;start of code segment
    main proc          ;start of main function 
        mov ax, 30d      ; Decimal numbers can be written with or without 'd' at the end. 
        ; NOTE: By defaule the value stored in the lower 8 bits i. e. in al in this case.
        ; Number are stored in the form of hexadecimal equivalent.
        
        mov bx, 30a8h
        
        mov al, 127      ; overwrites previously saved data in ax.
        mov bl, 86h      ; overwrites only bl of previously saved data in bx.
        
        mov ax, 4c00h
        mov ax, 0f1ach  
        ; NOTE: if the value starts with a non-decimal number, then it should start with a 0. Here instead of 'f1ach', we have to write '0f1ach'.
        ; Here the '0' is using as a rule.
        ; We didn't wrote '04c00h' in the previous, because '4c00h' starts with a decimal number 4.
        
        mov ax, -123
        mov bh, 01001100b
        
        mov cx, 'B'     ; Copies the hexadecimal value of character 'B' to cx. (it is 42 in this case)
        mov dx, 'AB'    ; Copies the value of 'B' to dl and value of 'A' to dh. 
        
        mov ax, dx      ; Copies the value of dx to ax. 
        
        ; to move a value in a prticular address
        mov 1234h, bx;
        
    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    