INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  
.CODE 
  MAIN PROC
     MOV BH, 1111B
     
     ;AND BH, 101B
     
     ;OR BH, 101B 
     
     ;XOR BH, 101B 
     
     NOT BH
     
     ;ADD BH,48
     
     MOV AH,2
     MOV DL,BH
     INT 21H
     
     MOV AH,4CH
     INT 21H
   MAIN ENDP
END MAIN
        