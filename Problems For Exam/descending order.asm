; descending Order
;
DATA SEGMENT
STRING1 DB 99H,15H,79H,50H,66H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: 
    MOV AX,DATA
    MOV DS,AX
    MOV CH,04H
    
    UP2: 
        MOV CL,04H
        LEA SI,STRING1
    UP1: 
        MOV AL,[SI]
        MOV BL,[SI+1]
        CMP AL,BL
        JNC DOWN         ; difference here form ascending order
        MOV DL,[SI+1]
        XCHG [SI],DL
        MOV [SI+1],DL
    DOWN: 
        INC SI
        DEC CL
        JNZ UP1
        DEC CH
        JNZ UP2
CODE ENDS
END START