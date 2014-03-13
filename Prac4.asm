        		PAGE 60,132
        		TITLE PROG4.EXE 
 
        		.MODEL SMALL
;___________________________________
 
        		.CODE
        		
ORG     100H
 
MAIN    	PROC    NEAR
        		MOV     AX,01
        		MOV     BX,01
        		MOV     DX,01
            MOV     CX,10
 
A20:    	INC     AX
        		ADD     BX,AX
        		SHL     DX,1
        		LOOP    A20
 
        		MOV     AX,4C00H
        		INT     21H
 
MAIN    	ENDP
        		
END     MAIN