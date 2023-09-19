;NESTED IF
;GREATER THAN OR EQUAL
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA

.CODE

   MAIN PROC
     MOV BH,89
     
     CMP BH,80
     JGE IF1
     
     CMP BH,75
     JGE IF2
     
     CMP BH,70
     JGE IF3
     
     CMP BH,65
     JGE IF4
     
     CMP BH,60
     JGE IF5
     
     CMP BH,55
     JGE IF6
     
     CMP BH,50
     JGE IF7
     
     CMP BH,45
     JGE IF8
     
     CMP BH,40
     JGE IF9
     
     JMP ELSE
     
     IF1:
     PRINTN "A+"
     JMP END_IF 
     
     IF2:
     PRINTN "A-"
     JMP END_IF
     
     IF3:
     PRINTN "A"
     JMP END_IF
     
     IF4:
     PRINTN "B+"
     JMP END_IF
     
     IF5:
     PRINTN "B"
     JMP END_IF
     
     IF6:
     PRINTN "C+"
     JMP END_IF
     
     IF7:
     PRINTN "C"
     JMP END_IF
     
     IF8:
     PRINTN "D"
     JMP END_IF
     
     IF9:
     PRINTN "PASS"
     JMP END_IF
     
     ELSE:
     CMP BH,40
     JGE IF9
     PRINTN "F"
     END_IF:
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN