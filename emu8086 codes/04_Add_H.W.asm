INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
     ;VARIABLE DECLARATION

.CODE
     ;CODE SEGMENT
     
     MAIN PROC
        
        MOV AH,1
        INT 21H
        
        ;INPUT
        MOV BL,AL
        INT 21H
        
        MOV BH,AL
        
        ;ADD
        ADD BL,BH
        
        ;NEW LINE
       PRINTN
        
        ;OUTPUT
        MOV AH,2
        SUB BL,48
        MOV DL,BL
        INT 21H  
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP

END MAIN