;ARRAY PRINT
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  ARRAY DB 1,2,3,4,5
  
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
            
    LEA SI,ARRAY
           
    MOV CX,5
    
    MOV AH,2       
    
    FOR:
    MOV DL,[SI]
    ADD DL,48
    INT 21H
    
    ADD SI,1
    LOOP FOR
    
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN