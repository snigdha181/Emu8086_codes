INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
        
    FOR:
    CMP BL,"0"
    JE END
   
    MOV AH,2 
    PRINTN
    MOV DL,BL
    INT 21H
    DEC BL
    JMP FOR 
    
    END:
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN