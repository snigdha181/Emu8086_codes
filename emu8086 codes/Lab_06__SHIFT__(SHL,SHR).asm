INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA


.CODE
    MAIN PROC
        
        MOV BH,10111B
        SHR BH,1
        SHR BH,1
        SHL BH,1
        SHL BH,1
 
 
        MOV AH,4CH
        INT 21H
        MAIN ENDP 
END MAIN