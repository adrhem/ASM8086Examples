        		PAGE    60,132
        		TITLE   PRACT10.EXE
 
        		.MODEL  SMALL
;_____________________________________
 
        		.STACK  64
 
        		.DATA
 
REG0    	DW      0FFFFH
REG1    	DW      0FFFFH
REG2    	DW      0FFFFH
COLOR   	DB      000H
MSJE    	DB      "PRACTICA 10: Retardo","$"
;_____________________________________
 
        		.CODE
INICIO  	PROC    FAR
        		MOV     AX,@DATA
        		MOV     DS,AX
        		CALL    PANT1
        		CALL    CAMBIO
        		CALL    CURSOR1 
        		MOV     AX,4C00H
        		INT     21H
INICIO  ENDP
;_____________________________________
 
PANT0   	PROC    NEAR
        		MOV     AX,0600H
        		MOV     BH,COLOR
        		MOV     CX,0205H
        		MOV     DX,1545H
        		INT     10H
        		RET
PANT0   	ENDP
;_____________________________________
 
PANT1   	PROC    NEAR
        		MOV     AX,0600H
        		MOV     BH,10H
        		MOV     CX,0000H
        		MOV     DX,1950H
        		INT     10H
        		RET
PANT1   	ENDP
CURSOR0 	PROC    NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,0C1AH
        		INT     10H
        		RET
CURSOR0 	ENDP
;_____________________________________
 
CURSOR1 	PROC    NEAR
        		MOV     AH,02H
        		MOV     BH,00H
        		MOV     DX,1400H
        		INT     10H
        		RET
CURSOR1 	ENDP
;_____________________________________
 
CAMBIO  	PROC    NEAR
        		CALL    PANT0
        		CALL    CURSOR0
        		CALL    DESP
        		CALL    RETARd
        		CALL    RETARi
        		CALL    RETARd
        		CALL    RETARi
        		INC     COLOR
        		CMP     COLOR,0FFH
        		JE      SALE
        		JMP     CAMBIO
SALE:   	RET
CAMBIO  	ENDP
;_____________________________________
 
DESP    	PROC    NEAR
        		MOV     AH,09H
        		LEA     DX,MSJE
        		INT     21H
        		RET
DESP    	ENDP
;_____________________________________
 
RETARd   	PROC    NEAR
DECR0:  	DEC     REG0
        		CMP     REG0,00000H
        		JE      DECR1
        		JMP     DECR0
DECR1:  	DEC     REG1
        		CMP     REG1,00000H
        		JE      DECR2
        		JMP     DECR1
DECR2:  DEC     REG2
        		CMP     REG2,00000H
        		JE      SALIR0
        		JMP     DECR2
SALIR0:  RET
RETARd   	ENDP
;_____________________________________
 
RETARi   	PROC    NEAR
INCR0:  	INC     REG0
        		CMP     REG0,0FFFFH
        		JE      INCR1
        		JMP     INCR0
INCR1:  	INC     REG1
        		CMP     REG1,0FFFFH
        		JE      INCR2
        		JMP     INCR1
INCR2:  	INC     REG2
        		CMP     REG2,0FFFFH
        		JE      SALIR1
        		JMP     INCR2
SALIR1:  	RET
RETARi   	ENDP        
;_____________________________________
 
        		END     INICIO
