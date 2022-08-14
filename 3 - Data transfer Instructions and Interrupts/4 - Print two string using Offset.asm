; ========================================
; ====== Offset Instruction ======
; ========================================    

; Offset: Assembler directive which holds the  beginning address of a variable
; Syntax: mov register/variable, Offset Memory Variable    
                                                                     
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    str1 db "James Bond $"         ;initializing a variable str1 with a string.
    str2 db "007 $"         ;initializing second variable str2 with a string.
ENDS                  ;end of data segment
 
; ===== Define Stack Segment =====
; Operations related to stack for example push, pop top of the stack etc. 
STACK SEGMENT         ;start of stack segment
   
ENDS                  ;end of stack segment

; ===== Define Code Segment =====
; Define Main function/procedure
; Add logic/instructions
CODE SEGMENT          ;start of code segment

    
main proc
    ; NOTE: In this program we are trying to access data segment variables in code segment. 
    ; To do that properly, we first need to initialize data segment (ds) variables properly
    ; But we cannot do 'mov ds, data'. it will through error. (See 'Data Transfer Rules' section)
    ; So we need to split our code to do that as following
    
    mov ax, @data       ; Set segment registers. '@' for refering
    mov ds, ax          ; to load variables properly and faster from data segment to code segment.
    
     mov dl, offset str1     ; moves beginning address of str1
     ; A subroutine is used to display the string.
     ; Subroutines are used with the ah register.
     mov ah, 09h             ; String Display subroutine is 09h
     ;The subroutine (09h) is defined in 21h.
     int 21h                 ; 21h --> DOS interrupts
     
     mov dl, offset str2     ; moves beginning address of str2
     ; A subroutine is used to display the string.
     ; Subroutines are used with the ah register.
     mov ah, 09h             ; String Display subroutine is 09h
     ;The subroutine (09h) is defined in 21h.
     int 21h                 ; 21h --> DOS interrupts
 
     mov ax, 4c00h           ; Exit. It is used to terminate program and it returns control to DOS.
     int 21h
main endp
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    