;STRING REVERSE
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  STRING DB "ASSEMBLY"
  
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
            
    LEA SI,STRING
           
    MOV CX,8
    
    MOV AH,2
    ADD SI,7    
    
    FOR:
    MOV DL,[SI]
    INT 21H
    SUB SI,1
    LOOP FOR
    
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN