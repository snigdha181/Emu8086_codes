.MODEL SMALL
.STACK 100H

.DATA
    ;VARIABLE DECRALATION PART
    ; DATA TYPE - 2(db, dw)
    ; db - DEFINE BYTE
    ; DW - DEFINE WORD   
    ; VARIBALE STORE DATA IN MEMORY(ram)
    
.CODE   
    ; CODE SEGEMENT
    ; ALL CODE
    MAIN PROC
        ;STATEMENT 1
        ; STATEMENT 2
        
        ;INSTRUCTION DESTINATION,SOURCE  
        MOV AH, 05H 
        MOV AL, AH   
        MOV BH,10H
        
        ADD AH, AL ; AH = AH + AL
        ; AH += AL
        ADD AH, 06H
        
        SUB BH, 06H ; BH = BH - 06H
        
        
                 
        MOV AH, 4CH
        INT 21H
        MAIN ENDP



END MAIN