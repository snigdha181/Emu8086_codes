INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
   

.CODE   

    MAIN PROC 
        MOV CH, 5
        MOV BH, 1
        ;ADD CH, 48
        ;ADD BH, 48  
        
        FOR: 
        CMP BH, CH
        JG ENDF
        
        MOV AH, 2
        MOV DL, BH
        INT 21H 
        PRINTN
        
        INC BH  ; INC (BX++)
        JNE FOR
        ;JMP FOR
        
        ENDF: 
        PRINTN "CODE END"   
        
        ;FOR(BX = 0 ; BX <= CX ; INC)
        ; CMP
        
        
        MAIN ENDP

    MOV AH, 4CH
    INT 21H
END MAIN