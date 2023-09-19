INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
     ;VARIABLE DECLARATION
     
     A DB ?
     B DB ?

.CODE 
     ;CODE SEGMENT
     
     MAIN PROC
        
        MOV AH,1
        INT 21H
        
        MOV A,AL
        SUB A,48
        INT 21H
        
        MOV B,AL
        SUB B,48
        INT 21H
        
        MOV BH,A    ;BH=A
        ADD BH,B    ;BH=BH+B
        ADD BH,48   ;BH=BH+48
        
        PRINTN
        
        
        ;OUTPUT SUM 
        MOV AH,2
        MOV DL,BH
        INT 21H
        
        
     MOV AH,4CH
     INT 21H   
     MAIN ENDP

END MAIN