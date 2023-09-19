INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  N DB ?
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    MOV BH,1
    PRINTN
    MOV AH,2
    MOV DL,"*"
    
    IF1:
     CMP BH,N
     JG END_IF1
     MOV BL,1
     IF2:
      CMP BL,BH
      JG END_IF2
      INT 21H
      INC BL
      JMP IF2 
      END_IF2:
    PRINTN
    INC BH
    JMP IF1
    END_IF1:
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN