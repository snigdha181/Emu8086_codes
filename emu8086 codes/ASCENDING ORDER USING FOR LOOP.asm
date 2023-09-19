INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV CL,"1"
    FOR:
    CMP CL,BL
    JG END
   
    
    MOV AH,2 
    PRINTN
    MOV DL,CL
    INT 21H
    
    INC CL
    JMP FOR
    END:
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN