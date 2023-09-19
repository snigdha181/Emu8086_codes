INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  N DB ?
  SUM DB 0
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    PRINTN "ENTER N:"
    MOV AH,1
    INT 21H  
    SUB AL,48
    MOV N,AL
    
    PRINTN
    
    MOV BL,1
    
    FOR:
    CMP BL,N
    JG END
    ADD SUM, BL
    INC BL
    JMP FOR
    
    END:
    
    PRINTN "THE SUM IS "
    
    MOV AH,2
    MOV DL,SUM
    ADD DL,48
    INT 21H
  MAIN ENDP
END MAIN