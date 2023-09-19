;write an assembly language which print * if the number is less than 10 otherwise print #.

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

 MAIN PROC
    
    MOV BX,19
    
    CMP BX,10
    JL IF1
    
    CMP BX,10
    JGE IF2
    
    ;JMP ELSE
    
    IF1:
    PRINTN "*"
    JMP END_IF
    
    IF2:
    PRINTN "#"
    JMP END_IF
    
    END_IF:
   ; ELSE:
    
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP
END MAIN