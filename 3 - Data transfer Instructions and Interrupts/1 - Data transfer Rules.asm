; =====================================
; ====== Rules for Data Transfer ======
; =====================================    


; ===== 1) Register to Register =====
; Register to register data movement of same size is allowed, Destination is register and source is also a register
; example mov ax, bl or mov ch, dl
; mov ch, dx ---> is not allowed because size not same.

; ===== 2) Segment Register to Register =====
; Segment Register to register data movement of same size is allowed, Destination is register and source is a segment register.
; example: mov ax, cs or mov si, ds
; mov al, es ---> is not allowed, because al is 8 bit and es is of 16 bit
; same rule for register to segment register. 

; ===== 3) Variable to Register =====
; Variabble is a memory location. Variable to register data movement of same size is allowed, Destination is register and source is a variable.
; example: mov ax, var1
; it depend upon var1 variable data type, Valid if both are same size and invalid if not.

; ===== 4) Constant to Register =====
; Constant to register data movement is allowed.
; example: mov ax, 50 or mov si, 21h
; mov al, es ---> is not allowed, because al is 8 bit and es is of 16 bit
; Register to constant is not allowed. 

; ===== 5) Variable to Variable =====
; Variable is memory location. Variable to Variable is not allowed. Because in 8086 we can not acces memory location simultaneously. 
; example: mov var1, var2 ---> is not allowed.

; ===== 6) Segment Register to Segment Register =====
; Segment Register to Segment register data movement is now allowed
; example: mov ds, cs ---> not allowed
  
; ===== 7) Segment Register to Variable =====
; Segment Register to variable data movement is now allowed if same size.
  
; ===== 8) Constant to Segment Register =====
; Constant to Segment register data movement is now allowed
; example: mov es, 05 ---> not allowed
; Segment register to constant is also not allowed

; ===== 9) Read/Write IP =====
; IP or Instructions pointer is not allowed to read/write