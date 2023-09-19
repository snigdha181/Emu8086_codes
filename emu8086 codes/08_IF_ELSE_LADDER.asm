;IF_ELSE LADDER
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
     
     MOV BX,67
     
     CMP BX,100
     JGE IF1
     
     CMP BX,80
     JGE IF2
     
     CMP BX,60
     JGE IF3
     
     CMP BX,40
     JGE IF4
     
     CMP BX,20
     JGE IF5
     
     JMP ELSE
     
     IF1:
     PRINTN "THE NUMBER IS GREATER THAN OR EQUAL 100"
     JMP END_IF
     
     IF2:
     PRINTN "THE NUMBER IS GREATER THAN OR EQUAL 80"
     JMP END_IF
     
     IF3:
     PRINTN "THE NUMBER IS GREATER THAN OR EQUAL 60"
     JMP END_IF
     
     IF4:
     PRINTN "THE NUMBER IS GREATER THAN OR EQUAL 40"
     JMP END_IF
     
     IF5:
     PRINTN "THE NUMBER IS GREATER THAN OR EQUAL 20"
     JMP END_IF 
     
     ELSE:
     PRINTN "THE NUMBER IS LESS THAN 20"
     JMP END_IF
     
     END_IF:
    
    MOV AH,4CH
    INT 21H
   MAIN ENDP  
END MAIN