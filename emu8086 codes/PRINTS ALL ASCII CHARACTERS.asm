INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    MOV CX,256
    
    MOV AH,2
    MOV DL,0
    
    LOOP:
     INT 21H
     INC DL
     DEC CX
     JNZ LOOP
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN