

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA


.CODE
    MAIN PROC
        
        MOV BH, 1011111B
        MOV BL,BH
        
        IF:
        
        CMP BL,101B
        
        JG START
        JL AUTO
        JE END
        
        
 
        START: 
        SHR BL,1
        CMP BL,101B
        JG START
        JL AUTO
        JE END
        
            
       AUTO:
       SHL BL,1
       CMP BL,101B
       JL AUTO
       JG START
       JE END
        
        END:
        MOV AH,4CH
        INT 21H
        MAIN ENDP 
END MAIN