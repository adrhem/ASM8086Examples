        		 PAGE 60,132
      		 TITLE PROG9.EXE
 
       	.MODEL MEDIUM
        		.STACK 64
;_____________________________________       		
 
.DATA
 
ENTRADA1  	LABEL   BYTE
LONMAX1    DB      20
LONREAL1   DB      ?
INTRO1         DB      21 DUP(' ')
 
ENTRADA2	LABEL   BYTE
LONMAX2   	DB      25
LONREAL2   DB      ?
INTRO2         DB      21 DUP(' ')
 
ENTRADA3  LABEL   BYTE
LONMAX3    DB      20
LONREAL3   DB      ?
INTRO3         DB      21 DUP(' ')
 
ETIQ1            DB      'NOMBRE : ','$'
ETIQ2            DB      'CARRERA : ','$'
ETIQ3            DB      'REGISTRO : ','$'
;_____________________________________
 
        		.CODE
MAIN    	PROC    FAR
        		MOV     AX,@DATA
        		MOV      DS,AX
        		CALL     PANT0
        		CALL     CURS1
        		CALL     DESPM1
        		CALL     TECLA1
        		CALL     CAMPANA1
        		CALL     CURS2
        		CALL     DESPM2
        		CALL     TECLA2
        		CALL     CAMPANA2
        		CALL     CURS3
        		CALL     DESPM3
        		CALL      TECLA3
        		CALL      CAMPANA3
        		CALL      CURS11
        		CALL      DESP1
        		CALL      CURS21
        		CALL      DESP2
        		CALL      CURS31
        		CALL      DESP3
 
        		MOV       AX,4C00H
        		INT         21H
 
MAIN    	ENDP
;_____________________________________
 
PANT0   	PROC    NEAR
        		MOV     AH,06H
        		MOV     BH,47H
        		MOV     CX,0000H
        		MOV     DX,184FH
        		INT     10H
        		RET
PANT0   	ENDP
;_____________________________________
 
CURS1   	PROC    NEAR
       		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,0404H
        		INT     10H
        		RET
CURS1   	ENDP
;_____________________________________
 
DESPM1  	PROC    NEAR
        		MOV     AH,09H
        		LEA     DX,ETIQ1
        		INT     21H
        		RET
DESPM1    	ENDP
;_____________________________________
 
TECLA1  	PROC    NEAR
        		MOV     AH,0AH
        		LEA     DX,ENTRADA1
        		INT     21H
        		RET
TECLA1   	ENDP
;_____________________________________
 
CAMPANA1 	PROC    NEAR
        		MOV     BX,00H
        		MOV     BL,LONREAL1
        		MOV     INTRO1[BX],07H; SONIDO CAMPANA
        		MOV     INTRO1[BX+1],'$' ;DELIMTA LA CADENA
        		RET
CAMPANA1 ENDP
;_____________________________________
 
CURS2   	PROC    NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,0C04H
        		INT     10H
        		RET
CURS2   	ENDP
;_____________________________________
 
DESPM2    	PROC    NEAR
        	        	MOV     AH,09H
        		LEA     DX,ETIQ2
        		INT     21H
        		RET
DESPM2    	ENDP
;_____________________________________
 
TECLA2   	PROC    NEAR
        		MOV     AH,0AH
        		LEA     DX,ENTRADA2
        		INT     21H
        		RET
TECLA2   	ENDP
;_____________________________________
 
CAMPANA2 	PROC    NEAR
        		MOV     BX,00H
        		MOV     BL,LONREAL2
        		MOV     INTRO2[BX],07H
        		MOV     INTRO2[BX+1],'$'
        		RET
CAMPANA2 	ENDP
;_____________________________________
 
CURS3   	PROC    NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,1304H
        		INT     10H
        		RET
CURS3   	ENDP
DESPM3    	PROC    NEAR
           		MOV     AH,09H
        		LEA     DX,ETIQ3
        		INT     21H
        		RET
DESPM3    	ENDP
;_____________________________________
 
TECLA3   	PROC    NEAR
        		MOV     AH,0AH
        		LEA     DX,ENTRADA3
        		INT     21H
        		RET
TECLA3   	ENDP
;_____________________________________
 
CAMPANA3 	PROC    NEAR
        		MOV     BX,00H
        		MOV     BL,LONREAL3
        		MOV     INTRO3[BX],07H
        		MOV     INTRO3[BX+1],'$'
        		RET
CAMPANA3 	ENDP
;_____________________________________
 
PANT1   	PROC    NEAR
        		MOV     AH,06H
        		MOV     BH,47H
        		MOV     CX,0000H
        		MOV     DX,184FH
        		INT     10H
        		RET
PANT1   	ENDP
;_____________________________________
 
CURS11  	PROC     NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,0427H
        		INT     10H
        		RET
CURS11   	ENDP
;_____________________________________
 
DESP1    	PROC    NEAR
MOV     AH,09H
        		LEA     DX,INTRO1
        		INT     21H
        		RET
DESP1    	ENDP
CURS21  	PROC     NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,0C27H
        		INT     10H
        		RET
CURS21   	ENDP
;_____________________________________
 
DESP2    	PROC    NEAR
 		MOV     AH,09H
        		LEA     DX,INTRO2
        		INT     21H
        		RET
DESP2    	ENDP
;_____________________________________
 
CURS31  	PROC     NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,1327H
        		INT     10H
        		RET
CURS31   	ENDP
;_____________________________________
 
DESP3    	PROC    NEAR
        		MOV     AH,09H
        		LEA     DX,INTRO3
        		INT     21H
        		RET
DESP3    	ENDP
;_____________________________________
 
         		END      MAIN