INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  I DW 1
  ADDs DW ?
.CODE
  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,01H
    INT 21H
    
    SUB AL,48
    
    MOV CX,0
    MOV CL,AL
    
    MOV BX,0
    
    SUM:
     ADD BX,I
     INC I
     LOOP SUM
     MOV ADDs,BX
     PRINTN
      
    MOV AH,2
    MOV DX,ADDs  
    ADD DX,48
    INT 21H 
    
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN