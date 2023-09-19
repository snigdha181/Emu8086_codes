;input any binary output 5
INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H

.DATA


.CODE
    MAIN PROC
       
        MOV BH, 11100101B
        MOV BL,BH  
       
        FOR1:
 
        SHL BL,1
       
        CMP BL,10100000B
        JE END
        JMP FOR1
       
        END:
        
        FOR2:
        SHR BL,1
        CMP BL,00000101B
        JE END2
        JMP FOR2
       
        END2:  
        MOV AH,2
        MOV DL,BL 
        ADD DL, 48
        INT 21H
       
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN
