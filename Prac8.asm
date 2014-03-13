           		PAGE    60,132
          		TITLE PROG8.EXE
          		.MODEL SMALL
          		.STACK 64
;_____________________________________
          		.DATA
ENTRA     	LABEL  BYTE
LONMAX    	DB     20
LONREAL   	DB     ?
INTROD    	DB     21 DUP(' ')
MEN       	DB     'INTRODUCIR NOMBRE : ' , '$'
;_____________________________________
         		.CODE
BEGIN    	PROC     FAR
         		MOV      AX,@DATA
         		MOV      DS,AX
OTRO:    	CALL     PANT0
         		MOV      DX,0502H
         		CALL     CURS0
         		CALL     DESPL0
         		CALL     TECLA0
         		CMP      LONREAL,00
         		JE       SALIR
         		CALL    CAMPA
         		CALL     CENTRAR
         		JMP      OTRO
SALIR:   	MOV      AX,4C00H
         		INT      21H
BEGIN    ENDP
;_____________________________________
 
DESPL0   	PROC     NEAR
         		MOV      AH,09H
         		LEA      DX,MEN
         		INT      21H
         		RET
DESPL0   	ENDP
;_____________________________________
 
TECLA0   	PROC     NEAR
         		MOV      AH,0AH
         		LEA      DX,ENTRA
         		INT      21H
         		RET
TECLA0   	ENDP
;_____________________________________
CAMPA    	PROC     NEAR
         		MOV      BH,00
         		MOV      BL,LONREAL
         		MOV      INTROD[BX],07
         		MOV      INTROD[BX+1],'$'
         		RET
CAMPA    	ENDP
;_____________________________________
 
CENTRAR  	PROC     NEAR
         		MOV      DL,LONREAL
         		SHR      DL,1
         		NEG      DL
         		ADD      DL,40
         		MOV      DH,12
         		CALL     CURS0
         		MOV      AH,09H
         		LEA      DX,INTROD
         		INT      21H
         		RET
CENTRAR  	ENDP
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
 
CURS0    	PROC     NEAR
         		MOV      AH,02H
         		MOV      BH,00
         		INT      10H
         		RET
CURS0    	ENDP
;_____________________________________
 
         		END      BEGIN