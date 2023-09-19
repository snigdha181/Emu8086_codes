; IF ELSE
; CONDITION
; POSITIVE OR NEGATIVE

.MODEL SMALL
.STACK 100H

.DATA


.CODE   

    MAIN PROC
        MOV BH, 10
        
        CMP BH, 0
        JL IF
        
        JGE ELSE
        
        
        IF:
        PRINTN "THIS IS A NEGATIVE NUMBER"
        
        ELSE:
        PRINTN "THIS IS A POSITIVE NUMBER"
        
        
        
        MOV AH, 4CH
        INT 21H
        ENDP MAIN


MAIN END
