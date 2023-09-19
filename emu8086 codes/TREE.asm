INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    MOV BX,1
    MOV CX,7
    
    L1:
     PUSH CX
     MOV AH,2
     MOV DL,32   ;32=SPACE
     
    L2:
     INT 21H
     LOOP L2
     
    MOV CX,BX
    MOV DL,"*"
    
    L3:
     INT 21H
     LOOP L3
     
    PRINTN
    
    INC BX
    INC BX
    
    POP CX
    
    LOOP L1
    
   MOV AH,4CH
   INT 21H
  MAIN ENDP
END MAIN