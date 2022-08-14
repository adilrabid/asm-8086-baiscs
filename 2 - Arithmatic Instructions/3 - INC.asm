; ==============================
; ====== INC instruction: ======
; ==============================    

; INC stands for increment. It is used to increament the provided byte/word by 1.

; Syntax: inc register/variable

; Note: this is an one operand instruction.
                                                                        
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
    
    mov  al, 20
    inc al              ; increaments al by 1    
    
    mov  bl, 10
    dec bl              ; decreaments bl by 1 
    
    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    