;ARRAY SEARCH
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
  ARRAY DB 49,50,51,52
  SEARCH DB 52
.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
            
    LEA SI,ARRAY
    MOV BH,SEARCH        
    MOV CX,4    
    
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