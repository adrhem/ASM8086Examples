 PAGE 60,132 
 TITLE PROG1.EXE 
 
        .MODEL SMALL 
 
        .STACK 64 
;_______________________________
 
        .DATA
DAT1    DB      05H 
DAT2    DB      10H
DAT3    DB      ?
 
;_______________________________
 
 
        .CODE
 
BEGIN   PROC    FAR
 
        MOV     AX,@DATA
        MOV     DS, AX
 
        MOV     AH,DAT1
        ADD     AH,DAT2
        MOV     DAT3,AH
        MOV     AX,4C00H
        INT     21H
 
BEGIN   ENDP
        END     BEGIN
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 

