.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H                  ;INPUT
    MOV BL,AL
    
    
    MOV AH,2         ;NEWLINE
    MOV DL,0AH      ;0A IS A NEW LINE;               
    INT 21H
    MOV DL,0DH      ;0D IS CREAT;
    INT 21H
    
    MOV AH,2                 ;OUTPUT
    MOV DL,BL
    INT 21H
    
    EXIT:
    
    MOV AH,4CH               ;RETURN
    INT 21H
    MAIN ENDP
END MAIN




