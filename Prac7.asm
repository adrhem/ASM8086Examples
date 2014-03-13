PAGE    60,132
          		TITLE PROG7.EXE
          		.MODEL SMALL
          		.STACK 64

;_____________________________________

.DATA
ETIQ  DB 'DESPLIEGUE DE MODO DE VIDEO CON MENSAJE BIEN LARGOTOTOTOTOTE$'

;_____________________________________

         		.CODE
BEGIN PROC FAR
         	MOV      AX,@DATA
         	MOV      DS,AX
		CALL     PANT0
         	CALL    CURSOR
	        CALL     DESPL0
		MOV      AX,4C00H
         	INT      21H
BEGIN    	ENDP
;_____________________________________
PANT0    	PROC     NEAR
         		MOV      AX,0600H
         		MOV      BH,30
         		MOV      CX,0000
         		MOV      DX,184FH
         		INT      10H
         		RET
PANT0    	ENDP
;_____________________________________
CURSOR    	PROC     NEAR
         		MOV      AH,02H
         		MOV      BH,00
			MOV      DX,0502H
			INT      10H
         		RET
CURSOR    	ENDP
;_____________________________________
DESPL0   	PROC     NEAR
         		MOV      AH,09H
         		LEA      DX,ETIQ
         		INT      21H
         		RET
DESPL0   	ENDP 
;_____________________________________
 
         		END      BEGIN