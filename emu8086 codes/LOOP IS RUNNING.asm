INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  ;N DB ?
.CODE
  MAIN PROC
    
    MOV CX,5
    
    TOP:
    PRINTN "LOOP IS RUNNING"
    LOOP TOP
    
    PRINTN "LOOP IS ENDED"
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN