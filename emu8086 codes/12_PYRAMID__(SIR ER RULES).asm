INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
  MAIN PROC
    
    MOV BH,5
    MOV CH,1
    
    IF1:
      CMP CH,BH
      JG END_IF1 
      
      MOV BL,5
      MOV CL,1 
      IF2:
        CMP CL,BL
        JG END_IF2
        PRINT '*'
        INC CL 
        JMP IF2
      END_IF2:
     
     PRINTN
     INC CH
     JMP IF1
     END_IF1:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN