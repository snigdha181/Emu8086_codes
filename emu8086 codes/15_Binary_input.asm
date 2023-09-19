;BINARY INPUT

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    
    MOV BX,0
    
    MOV AH,1
    
    IF:
    INT 21H
    CMP AL,0DH
    JE END_IF
    SUB AL,48
    SHL BX,1
    OR BL,AL
    JMP IF
    
   END_IF:
   
   PRINTN
   MOV AH,2
   MOV DL,BL
   ADD DL,48
   INT 21H
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN