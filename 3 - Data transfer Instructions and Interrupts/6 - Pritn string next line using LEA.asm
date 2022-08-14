; ========================================
; ====== LEA Instruction ======
; ========================================    

; LEA: Load Effective Address loads the specified register with the offset of a memory location.
; Syntax: lea register, Memory Variable, Offset Memory Variable
                                                         
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    NM db "Name: James Bond $"         ;initializing a variable NM with a string.
    ID db 13, 10, "ID: 007 $"             ; initializing second variable ID with a string.  
    ; NOTE: 
    ; 13 --> move cursor to the beginning
    ; 10 --> move cursor to next row
    
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
    
    lea dx, NM     ; moves beginning address of variable 'NM' and it also prints at that memory location.
    ; A subroutine is used to display the string.
    ; Subroutines are used with the ah register.
    mov ah, 09h             ; String Display subroutine is 09h
    ; The subroutine (09h) is defined in 21h.
    int 21h                 ; 21h --> DOS interrupts
    
    ; Similarly for second string
    lea dx, ID     
    mov ah, 09h            
    int 21h                 
    
    mov ax, 4c00h           ; Exit. It is used to terminate program and it returns control to DOS.
    int 21h
main endp
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    