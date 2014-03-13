PAGE 60,132
        		TITLE PROG5.EXE 
 
        		.MODEL SMALL
;_____________________________________        
 
.STACK 64
        	
.DATA
;_____________________________________
 
        		.CODE
 
BEGIN   	PROC    FAR 
        		MOV     AX,01H
        		MOV     BX,01H
        		CALL    B10
        		
MOV     AX,4C00H
        		INT     21H
 
BEGIN   	ENDP
 
;_____________________________________
 
B10     		PROC    NEAR
        		MOV     CX,01H
        		CALL    C10
        		SHL     CX,1
        		RET
B10     		ENDP
;_____________________________________
 
C10     		PROC    NEAR
        		ADD     AX,01H
        		ADD     BX,AX
        		RET
C10     		ENDP
;_____________________________________
 
        		END     BEGIN