INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA


.CODE
    MAIN PROC
        MOV BL,10110101B

        MOV CL,11110011B
        
        MOV CH,10110111B
        
       
        
        ADD BL,CL
        ADD CH,BL
      
        
        
        
        MOV AH,2
        MOV DL,CH
        INT 21H
        
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP 
END MAIN