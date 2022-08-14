; ==============================
; ====== Using Variables ======
; ==============================    

                                                                        
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    var dw ?          ; here 'var' is the variable name, dw is data type and '?' for initializing with zero value.
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
         
         mov ax, 12      ; the 'mov' instruction will be discussed later.
         mov var, ax     ; stores the value 1ab3 in variable 'var'.
         
         ; now to check the value of 'var', we can either print the variable, or we can simplp mov it to another register to check.
         
         mov bx, var     ; observe the value of bx to verify.

    main endp          ;end of main function        
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    