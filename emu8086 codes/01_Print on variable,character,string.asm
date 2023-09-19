.MODEL SMALL
.STACK 100H

.DATA
       ;VARIABLE DECLARATION
       ;DB(DEFINE BYTE)
       ;DW(DEFINE WORD)
       
       NUM DB 49   ;VARIABLE_NAME  DATA_TYPE  DATA
       CHAR DB 'A' 
       STR DB "MY NAME IS SNIGDHA SAHA$"
       

.CODE                      
       ;CODE SEGMENT
       
       MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,2
        MOV DL,NUM
        INT 21H
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        MOV AH,2
        MOV DL,CHAR
        INT 21H 
        
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        MOV AH,9
        LEA DX,STR
        INT 21H
        
        
        MOV AH,4CH
        INT 21H
        
       MAIN ENDP
       

END MAIN