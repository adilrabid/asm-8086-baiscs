; ===========================================
; ==== Baisic Structure of 8086 ASM CODE ====
; ===========================================
                                                                        
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
        ; write logic/instructions here...
     
    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program

; NOTE: Order of Segment declaration varies from assembler to assembler.   
