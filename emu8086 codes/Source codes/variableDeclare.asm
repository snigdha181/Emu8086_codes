.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 5
    CHAR DB 'A'
    STR DB "FIRST BATCH$"



.CODE   

    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ADD NUM, 48
         
        ; PRINT ON SCREEN 
        MOV AH, 2
        MOV DL, NUM
        INT 21H   
        
        ;mov ah, 2
        mov dl, 0Ah
        int 21h
        mov dl, 0D
        int 21h
        
        ;MOV AH, 2
        MOV DL, CHAR
        INT 21H 
        
        MOV AH, 09H
        LEA DX, STR
        INT 21H 
        
        
        MAIN ENDP

    MOV AH, 4CH
    INT 21H
END MAIN