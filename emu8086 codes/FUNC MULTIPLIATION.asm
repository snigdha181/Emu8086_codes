;FUNCTION MULTIPLICATION

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
    CALL MULTI
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
   
   MULTI PROC
    
    ;INPUT
    PRINT "FIRST NUMBER : "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    PRINTN
    PRINT "SECOND NUMBER : "
    INT 21H
    MOV CL,AL
    SUB CL,48
    PRINTN
    
    MOV DL,0
    
    FOR:
      CMP CL,0
      JE END_FOR
      SHR CL,1
      
      JNC CHECK
      ADD DL,BL
      CHECK:
       SHL BL,1
       JMP FOR
     END_FOR:
     
     MOV AH,2
     ADD DL,48
     INT 21H
    
    RET
   MULTI ENDP
END MAIN