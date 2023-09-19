; IF ELSE
; CONDITION
; POSITIVE OR NEGATIVE

; NUMBER >= 40 OR >= 20 OR LESS THAN 20  

; PRINTN "SOMETHING"
; JMP CASE1
; INSTRUCTION LEVEL


INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H

.DATA


.CODE   

    MAIN PROC
        MOV BH, 5
        
        CMP BH, 40
        JGE IF 
        
        
        CMP BH, 20
        JGE ELSE_IF 
         
        JL ELSE
        
        
        IF:
        PRINTN "NUMBER IS GREWATER OR EQUAL 40"
        JMP END_IF 
        
        ELSE_IF:
        PRINTN "NUMBER IS GREWATER OR EQUAL 20"
        JMP END_IF
        
        ELSE:       
        PRINTN "THIS IS A POSITIVE NUMBER"
        
        END_IF:
        
        
        MOV AH, 4CH
        INT 21H
        ENDP MAIN


END MAIN
