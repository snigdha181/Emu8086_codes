INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  ARR DB 10 DUP(?)
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    XOR BX,BX
    MOV CX,5
    
    MOV AH,1
    FOR:
    INT 21H
    MOV ARR[BX],AL
    INC BX
    LOOP FOR
    
    PRINTN
    
    XOR BX,BX
    MOV CX,5
    
    MOV AH,2
    FOR2:
    MOV DL,ARR[BX] 
    INT 21H
    ;ADD DL,48
    INC BX
    LOOP FOR2
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN