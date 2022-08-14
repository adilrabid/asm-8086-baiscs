; ==============================
; ====== XCHG instruction: ======
; ==============================    

; It is used to exchange data between registers,or a register and a memory location a.

; Syntax: XCHG destination, source 

; Note: here destination in operand1 and source is operand2.
 
; Suppose before exchange al=10100101 and bl=11111000
; Then after exchange it will be al=11111000 and bl=10100101
                                                                        
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
        
    mov al, 10100101b 
    mov bl, 11111000b
    
    ; Exchange operation can be done by two ways
    ; with xchg instruction
    xchg al, bl         ;exchanges al with bl   
     
    ; with mov instruction (requries a third register)
    mov cl, al         ; cl=10100101
    mov al, bl         ; al=11111000
    mov bl, cl         ; bl=10100101   
    
    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    