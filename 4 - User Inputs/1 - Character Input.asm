; =============================
; ====== Character Input ======
; =============================   
                                                         
; ===== Define Data Segment =====
; Declare variables, array, struct etc. initialization
DATA SEGMENT          ;start of data segment
    str1 db "Emter a character: $"
    str2 db "Your entered character is: $"
    newline db 13,10,"$"   
ENDS                  ;end of data segment
 
; ===== Define Code Segment =====
; Define Main function/procedure
; Add logic/instructions
CODE SEGMENT          ;start of code segment
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, str1
    mov ah, 09h             ; Subroutine: Display String
    int 21h
    
    ;to take user input
    mov ah, 01h             ; Subroutine: character input with echo
                            ; By default input is stored in 'al' register
    int 21h
    
    ; If we want to deal with the entered input value further, we must save the value of ah to another
    ; register, otherwise next time when a intrrupt in called, value will be lost.
    mov bh, al              ; Saving the user enterd input from al to bh.
    
    
    lea dx, newline
    mov ah, 09h
    int 21h
    
    lea dx, str2
    mov ah, 09h
    int 21h
    
    mov dl, bh
    mov ah, 02h             ; Character Display
    int 21h
                 
    mov ax, 4c00h           ; Exit. It is used to terminate program and it returns control to DOS.
    int 21h
main endp
ENDS                  ;end of code segment

END MAIN             ;end of program 

    
 
    