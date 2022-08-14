;=============================
;======== Interrupts =========
;============================= 


; ===Interrupts
; While Microprocessor is executing a program an 'interrupt' breaks the normal sequence of execution
; of instruction, diverts its execution to some other program called Interrupt Service Runtime (ISR)
; Types of Interrupts:
;    |-- Hardware Interrupts
;        |-- Maskable Interrupts
;        |-- Maskable Interrupts
;    |-- Software Interrupts
;        |-- 256 types of Interrupts 


; === Maskable Interrupts: (Pin 18, INTR) Can be avoided
; === Non-maskable Interrupts: (Pin 17, NMI) Can not be avoided.


;=== Software Interrupts
; Software interrupts are program instructions.
; Syntax: INT n; n = 0 - 255
; To invoke a DOS or BIOS, the INT instruction in used.

;=== DOS Interrupts (INT 21h)
;       * INT 21h, Function 09h  --> Display the string on the screen
;       * INT 21h, Function 01h  --> Get Character input with Echo
;       * INT 21h, Function 02h  --> Display a number or character on the screen
;       * INT 21h, Function 08h  --> Get Character input without Echo
;       * INT 21h, Function 04ch --> Terminate the code properly and return to the DOS Prompt