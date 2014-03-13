        		PAGE 60,132
        		TITLE PROG6.EXE 
 
        		.MODEL SMALL
;_____________________________________
 
        		.STACK 64
 
        	.DATA
 
MEN     	DB      'cambiar a mayusculas'
;_____________________________________
 
       		.CODE
 
        		ORG     100H
MAIN    	PROC    NEAR
 
        		LEA     BX, MEN+1
        		MOV   CX, 20
 
OTRO:  	MOV     AH,[BX]
        		CMP      AH, 61H 
        		JB          OTRO2
        		CMP     AH, 7AH
        		JA         OTRO2
        		AND     AH, 11011111B 
        		MOV     [BX], AH
 
OTRO2:  	INC        BX
        		LOOP    OTRO
        		MOV     AX, 4C00H
        		INT       21H
 
MAIN    	ENDP
        
END     MAIN
 
 
