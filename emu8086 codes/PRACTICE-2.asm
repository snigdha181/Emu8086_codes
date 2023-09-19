INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE
   MAIN PROC
    
    ;;;;;;;;;;EXCHANGE;;;;;;;;;;
    ;MOV AH,1
    ;INT 21H
    ;MOV BL,AL
    
    ;MOV AH,1
    ;INT 21H
   ; MOV BH,AL
    
    ;XCHG BL,BH 
    PRINTN
    ;MOV AH,2
    ;MOV DL,BL
    ;INT 21H
    
    ;MOV AH,2
    ;MOV DL,BH
    ;INT 21H
     
    PRINTN
    ;;;;;;;;;;BEEP SOUND;;;;;;;;;        
    MOV AH,2
    MOV DL,07
    INT 21H
    MOV AH,2
    MOV DL,07
    INT 21H
      
    
    PRINTN
    ;;;;;;;;;;;;ADD 3 NUMBERS;;;;;;;;;
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD BL,BH
    SUB BL,48
    
    ADD BL,CL
    SUB BL,48
    
    PRINTN
    MOV AH,2
    MOV DL,BL
    ;SUB DL,48
    INT 21H
            
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN