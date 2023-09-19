INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  N DB 1
  ADDS DB ?
  
.CODE
  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,1
    MOV CX,10
    
    SUM:
     ADD BH,N
     INC N
     LOOP SUM
    PRINT "SUM : "
    MOV ADDS,BH
    MOV AH,2
    MOV DL,ADDS
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN