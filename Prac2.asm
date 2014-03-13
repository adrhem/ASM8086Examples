        PAGE 60,132
        TITLE PROG2.EXE
 
        .MODEL SMALL
 
        .STACK 64
;_______________________________
 
        .DATA
DAT1    DB      05H
DAT2    DB      10H
DAT3    DB      ?
DAT4    DB      01001000B 
DAT5    DB      10 DUP(0)  
DAT7    DB      'HOLA'       
DAT8    DB      08,'MAYO',01
DAT9    DW      0FFFFH       
DAT     DD      ?
DATB    DD      325772 
DATC    DT      ?
DATD    DB      10 DUP (?) 
TIME    EQU     10                                  
DATE    DB      TIME DUP (?) 
 
;_______________________________
 
        .CODE
 
BEGIN   PROC    FAR
        MOV     AH,DAT1
        ADD     AH,DAT2
        MOV     DAT3,AH
 
        MOV     AH,TIME
 
        MOV     AX,4C00H
        INT     21H
 
BEGIN   ENDP
 
        END     BEGIN