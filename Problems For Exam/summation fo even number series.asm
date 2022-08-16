;Summation of EVEN number series
ASSUME CS:CODE;
ORG 1000H
    MOV AX,0000H;
    MOV BX,0002H;
    MOV CL,0BH;
    BACK:
        ADD AX,BX;
        INC BX;
        INC BX;
    LOOP BACK;
END
