; Summation of Ordinary Number Series
ASSUME CS:CODE;
ORG 1000H
    MOV AX,0000H;
    MOV BX,0001H;
    MOV CL,0BH;
    BACK:
    ADD AX,BX;
    INC BX;
    LOOP BACK;
END