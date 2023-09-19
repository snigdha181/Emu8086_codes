;STRING SEARCH
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  STRING DB "ASSEMBLY"
  SEARCH DB "A"
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
            
    LEA SI,STRING
    MOV BH,SEARCH        
    MOV CX,8   
    
    FOR:
    MOV AL,[SI]
    CMP BH,AL
    JE RESULT
    INC SI
    LOOP FOR
    
    PRINTN "NOT FOUND"
    JMP END_FOR
    
    RESULT:
    PRINTN "FOUND"
    
    END_FOR:
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN