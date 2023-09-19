INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA


.CODE
    MAIN PROC
        
        MOV BH,10110111B
        RCL BH,2 
        RCR BH,1
            
        MOV AH,4CH
        INT 21H
        MAIN ENDP 
END MAIN