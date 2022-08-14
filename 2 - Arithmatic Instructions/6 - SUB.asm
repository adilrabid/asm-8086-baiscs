; ==============================
; ====== SUB instruction: ======
; ==============================    

; SUB stands for Subtraction. It is used to subtract two number using registers.

; Syntax: sub destination, sourcce

; Note: this is a two operand instruction.
                                                                        
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    res1 dw ?         ;initializing a variable res1 with zero value.
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
        mov ax, 9
        mov bx, 4    
        
        sub ax, bx      ; ax = ax - bx
        ; NOTE: Here the resultant value will be stored in the first operand (ax in this case) provided.
 
        mov res1, ax    ; Result stores in res1 user defined variable.
        mov dx, res1    ; to verify the value of res1.
        
    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    