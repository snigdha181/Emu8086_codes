INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
      
      MOV CH,10
      MOV BH,1
      ADD CH,48
      ADD BH,48
      
      FOR:
      CMP BH,CH
      JE ENDF 
      
      MOV AH,2
      MOV DL,BH
      INT 21H
      PRINTN
      INC BH
      JNE FOR
      
      ENDF:
      PRINTN "CODE END"
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
   
END MAIN