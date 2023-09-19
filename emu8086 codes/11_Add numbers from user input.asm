;Write an assembly code to sum 5 numbers taken from user, as well as show the average of these numbers.

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
  A DB ?
  B DB ?
.CODE
  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    PRINTN "ENTER THE NUMBERS:"
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,1
    INT 21H
    MOV CH,AL 
    
    MOV AH,1
    INT 21H
    MOV DH,AL
    
    ADD BL,BH
    SUB BL,48
    MOV A,BL
    
    ADD A,CL
    SUB A,48
    MOV BL,A
    
    ADD BL,CH
    SUB BL,48
    MOV CL,BL 
    
    ADD CL,DH
    SUB CL,48
    MOV B,CL
    
    SUB B,48
    
    PRINTN
    PRINTN "THE SUM IS : "
    
    MOV AH,2
    MOV DL,B
    ADD DL,48
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN