INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
   MOV AL,8
   MOV BL,4
   
   DIV BL
   
   MOV CL,AL
   MOV CH,AH 
   
   MOV AH,2
   MOV DL,CL
   ADD DL,48 
   INT 21H 
   
   MOV AH,2
   MOV DL,CH
   ADD DL,48 
   INT 21H 
   
   MOV AH,4CH
   INT 21H
   
  MAIN ENDP
END MAIN