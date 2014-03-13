                PAGE 60,132
        	     TITLE PROG3.EXE 
 
                .MODEL SMALL
;___________________________________
 
               .CODE
 
               ORG     100H
 
MAIN    PROC    NEAR
               MOV     AX,01
               MOV     BX,01
               MOV     CX,01
 
A20:      ADD     AX,01
	      JCXZ FIN
              ADD     BX,AX
              SHL     CX,1
              JMP     A20

FIN:
 
              MOV     AX,4C00H
              INT     21H
 
MAIN   ENDP
              
              END     MAIN