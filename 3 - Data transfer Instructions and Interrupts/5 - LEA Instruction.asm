; ========================================
; ====== LEA Instruction ======
; ========================================    

; LEA: Load Effective Address loads the specified register with the offset of a memory location.
; Syntax: lea register, Memory Variable, Offset Memory Variable

; ==== Difference of LEA and Offset instruction
; 1) Offset holds beginning address of a variable.
;    LEA is a indirect instruction in which register points to a memory location and holds the address 
;    of that memory location.
; 2) However, the MOV instruction cannot be indexed because OFFSET is an  assembler directive, not an
;    instruction.
;    LEA instruction can be indexed.

                                                         
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    str1 db "LEA Instruction $"         ;initializing a variable str1 with a string.     
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
    
    mov ax, @data       ; Set segment registers, must be ax. '@' for refering
    mov ds, ax          ; to load variables properly and faster from data segment to code segment.
    
    lea dx, str1        ; moves beginning address of variable 'str1' and it also prints at that memory location.
                        ; For LEA, we must use a 16bit register.
    ; NOTE: To display data, we should use a data register.                 
    
    mov ah, 09h             ; String Display subroutine is 09h. ah must be used, al won't work here.
                            ; A subroutine is used to display the string.
                            ; Subroutines are used with the ah register.
                            ; The subroutine (09h) is defined in 21h.
    int 21h                 ; 21h --> DOS interrupts
                 
    mov ax, 4c00h           ; Exit. It is used to terminate program and it returns control to DOS.
    int 21h
main endp
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    