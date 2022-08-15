; Find Average

data segment
    nums db 1, 2, 2, 4, 1
    sum db 0
    remainder db ?
    quotient db ?     ; result
    
ends

code segment
 main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset(nums)   ; to start indexing the nums array. first index in 0
    mov cx, 5
    
    l1:
        mov dl, [si]       ; [si] = the value to the current index of nums array.
        add sum, dl
        inc si
    
    loop l1
    
    mov ah,0              ; because we cant directly do ax = sum
    mov al,sum
    
    mov bl, 5
    div bl
    
    ; div knows that the value to divide is stored in ax
    ; the quotient will go to al, and remainder will go to ah
    
    mov remainder, ah    ; remainder
    mov quotient, al    ; result
    

 main endp
ends

end main