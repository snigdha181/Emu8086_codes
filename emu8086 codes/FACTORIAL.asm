INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  N DW 3
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,N
    MOV CX,N
    DEC CX
    
    FACT:
     DEC N
     MUL N
     DEC CX
     JNZ FACT
     
    MOV AH,2
    MOV DX,AX
    ADD DX,48
    INT 21H
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN