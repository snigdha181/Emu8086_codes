INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    CALL ADDITION
    CALL SUBTRACTION
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
  
  ADDITION PROC 
    PRINT "ENTER 1ST NUMBER: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    PRINTN
    PRINT "ENTER 2ND NUMBER: "
    INT 21H
    MOV CL,AL
    SUB CL,48
    
    ADD BL,CL
    PRINTN
    PRINT "SUM : "
    MOV AH,2
    MOV DL,BL
    ADD DL,48
    INT 21H
    
    RET
  ADDITION ENDP 
  PRINTN
  SUBTRACTION PROC 
    PRINTN
    PRINT "ENTER 1ST NUMBER: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    PRINTN
    PRINT "ENTER 2ND NUMBER: "
    INT 21H
    MOV CL,AL
    SUB CL,48
    
    SUB BL,CL
    PRINTN 
    PRINT "SUB : "
    MOV AH,2
    MOV DL,BL
    ADD DL,48
    INT 21H
    
    RET
  SUBTRACTION ENDP
END MAIN