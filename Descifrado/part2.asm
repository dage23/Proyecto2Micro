.386
.MODEL FLAT, STDCALL 
OPTION CASEMAP:NONE

INCLUDE \masm32\include\windows.inc 
INCLUDE \masm32\include\kernel32.inc
INCLUDE \masm32\include\masm32.inc
INCLUDE \masm32\include\masm32rt.inc 
include \masm32\include\user32.inc
include \masm32\include\gdi32.inc

includelib \masm32\lib\user32.lib
includelib \masm32\lib\gdi32.lib
INCLUDELIB \masm32\lib\kernel32.lib
INCLUDELIB \masm32\lib\masm32.lib
;Macros 

ImprimeNumero MACRO num
ADD num,30h
INVOKE StdOut, ADDR num
ENDM
Mapeo MACRO I, J, Filas, Columnas, Tamano
; I,J Representaran las posiciones en la matriz
; Filas y columnas cantidad o tama;os de las filas y columnas
;tamano del elemento
MOV AL,I
MOV BL,Filas
MUL BL
MOV BL,Tamano
MUL BL
MOV CL,AL
MOV AL,J
MOV BL,Tamano
MUL BL
ADD AL,CL


ENDM
print1 MACRO msg                
        INVOKE StdOut, ADDR msg
ENDM

selecCo MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC2:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir2

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir2

	inc posicion2
	
	jmp ContinuarContC2

	salir2:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM

selecCo1 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC3:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir3

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir3

	inc posicion2
	
	jmp ContinuarContC3

	salir3:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo2 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC4:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir4

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir4

	inc posicion2
	
	jmp ContinuarContC4

	salir4:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo3 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC5:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir5

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir5

	inc posicion2
	
	jmp ContinuarContC5

	salir5:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo4 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC6:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir6

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir6

	inc posicion2
	
	jmp ContinuarContC6

	salir6:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo5 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC7:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir7

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir7

	inc posicion2
	
	jmp ContinuarContC7

	salir7:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo6 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC8:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir8

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir8

	inc posicion2
	
	jmp ContinuarContC8

	salir8:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo7 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC9:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir9

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir9

	inc posicion2
	
	jmp ContinuarContC9

	salir9:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo8 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC10:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir10

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir10

	inc posicion2
	
	jmp ContinuarContC10

	salir10:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo9 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC11:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir11

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir11

	inc posicion2
	
	jmp ContinuarContC11

	salir11:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo10 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC12:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir12

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir12

	inc posicion2
	
	jmp ContinuarContC12

	salir12:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo11 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC13:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir13

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir13

	inc posicion2
	
	jmp ContinuarContC13

	salir13:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo12 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC14:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir14

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir14

	inc posicion2
	
	jmp ContinuarContC14

	salir14:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo13 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC15:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir15

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir15

	inc posicion2
	
	jmp ContinuarContC15

	salir15:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo14 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC16:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir16

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir16

	inc posicion2
	
	jmp ContinuarContC16

	salir16:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo15 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC17:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir17

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir17

	inc posicion2
	
	jmp ContinuarContC17

	salir17:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo16 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC18:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir18

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir18

	inc posicion2
	
	jmp ContinuarContC18

	salir18:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo17 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC19:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir19

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir19

	inc posicion2
	
	jmp ContinuarContC19

	salir19:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo18 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC20:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir20

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir20

	inc posicion2
	
	jmp ContinuarContC20

	salir20:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo19 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC21:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir21

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir21

	inc posicion2
	
	jmp ContinuarContC21

	salir21:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo20 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC22:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir22

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir22

	inc posicion2
	
	jmp ContinuarContC22

	salir22:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo21 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC23:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir23

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir23

	inc posicion2
	
	jmp ContinuarContC23

	salir23:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo22 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC24:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir24

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir24

	inc posicion2
	
	jmp ContinuarContC24

	salir24:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo23 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC25:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir25

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir25

	inc posicion2
	
	jmp ContinuarContC25

	salir25:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo24 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC26:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir26

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir26

	inc posicion2
	
	jmp ContinuarContC26

	salir26:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM
selecCo25 MACRO Carac, bdtosN, posicion2, bdtos1, CaracterMos       
ContinuarContC27:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	cmp posicion2,25
	je salir27

	mov ecx, posicion2
	mov al,[bdtosN+ecx]
	cmp Carac,al
	je salir27

	inc posicion2
	
	jmp ContinuarContC27

	salir27:
	xor ecx,ecx
	xor ax,ax
	MOV ecx,posicion2
	mov al,[bdtos1+ecx]
	mov CaracterMos,al
	INVOKE StdOut, ADDR CaracterMos
ENDM






.DATA
bdtos1 db 'A', 'B', 'C', 'D', 'E','F' , 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
bdtos2 db 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A'
bdtos3 db 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B'
bdtos4 db 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C'
bdtos5 db 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D'
bdtos6 db 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E'
bdtos7 db 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F'
bdtos8 db 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G'
bdtos9 db 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'
bdtos10 db 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'
bdtos11 db 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
bdtos12 db 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'
bdtos13 db 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L'
bdtos14 db 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'
bdtos15 db 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N'
bdtos16 db 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O'
bdtos17 db 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'
bdtos18 db 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q'
bdtos19 db 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R'
bdtos20 db 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S'
bdtos21 db 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T'
bdtos22 db 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U'
bdtos23 db 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V'
bdtos24 db 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W'
bdtos25 db 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X'
bdtos26 db 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y'

IngreseM DB  "Ingrese Mensaje Cifrado: ",0
IngreseC DB  "Ingrese Clave: ",0
IngreseO DB  "Ingrese la opcion que desee: ",0
IngreseO1 DB  "1 descifrar union mensaje por clave ",0
IngreseO2 DB  "2 Ver estadistica ",0
mensaje DB 150 DUP ("$"),0
clave DB 150 DUP ("$"),0
contadorM DB 0,0
contadorM2 db 0,0
contadorC DB 0,0
contadorFila DB 0,0
contadorColum DB 0,0
columna DB 1,0
fila DB 2,0
I DB 2,0
J DB 2,0
X DB 0,0
Y DB 0,0
Tamano DB 0,0
Caracter DB 0,0
;posicion Db 0,0
elegirFila db 65,0
contador db 0,0
contadorReco db 0,0
posicion DD 0,0
posicionReco DD 0,0
posicion2 DD 0,0
bdtosx db 0,0
SeguidoC db 0,0
CaracterMos db 0,0
OpcionUser db 0,0
ContA db 0,0
ContB db 0,0
ContC db 0,0
ContD db 0,0
ContE db 0,0
ContF db 0,0
ContG db 0,0
ContH db 0,0
ContI db 0,0
ContJ db 0,0
ContK db 0,0
ContL db 0,0
ContM db 0,0
ContN db 0,0
ContO db 0,0
ContP db 0,0
ContQ db 0,0
ContR db 0,0
ContS db 0,0
ContT db 0,0
ContU db 0,0
ContV db 0,0
ContW db 0,0
ContX db 0,0
ContY db 0,0
ContZ db 0,0
.CODE
program:
main PROC
	
	

	
	
	INVOKE StdOut, ADDR IngreseO
	print chr$(13,10)
	INVOKE StdOut, ADDR IngreseO1
	print chr$(13,10)
	INVOKE StdOut, ADDR IngreseO2
	print chr$(13,10)
	INVOKE StdIn, ADDR OpcionUser,100

	sub OpcionUser,30h
	cmp OpcionUser,1
	je Primera
	cmp OpcionUser,2
	MOV ContA,0
	je Segunda
	jmp salir


	Primera:
	INVOKE StdOut, ADDR IngreseM
	INVOKE StdIn, ADDR mensaje,100

	INVOKE StdOut, ADDR IngreseC
	INVOKE StdIn, ADDR clave,100

	LEA ESI, mensaje
			ContarLeM:
				xor cl,cl
				mov cl, 0
				CMP [ESI],cl
				JE	ContinuarContM
				inc esi
				inc contadorM
			jmp ContarLeM
			ContinuarContM:
			lea esi, clave
			ContarLeC:
				xor cl,cl
				mov cl, 0
				CMP [ESI],cl
				JE	ContinuarContC
				inc esi
				inc contadorC
			jmp ContarLeC
	
	ContinuarContC:
	;print str$(contadorM),10,13
	;print str$(contadorC),10,13
	xor eax,eax
	mov al,contadorC
	cmp contador,al
	je salir

	xor ecx,ecx
	MOV ecx,posicion
	mov al,[clave+ecx]
	mov Caracter,al

	mov al,[mensaje+ecx]
	mov bdtosx,al



	mov bdtosx,al
	inc contador
	inc posicion
	jmp EijaFila
	jmp ContinuarContC
	

	EijaFila:
	
	cmp Caracter,65
	jne fila1
	mov Caracter,0
	selecCo bdtosx,bdtos1, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila1:
	cmp Caracter,66
	jne fila2
	mov posicion2,0
	selecCo1 bdtosx,bdtos2, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila2:
	cmp Caracter,67
	jne fila3
	mov Caracter,0
	selecCo2 bdtosx,bdtos3, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila3:
	cmp Caracter,68
	jne fila4
	mov posicion2,0
	selecCo3 bdtosx,bdtos4, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila4:
	cmp Caracter,69
	jne fila5
	mov posicion2,0
	selecCo4 bdtosx,bdtos5, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila5:
	cmp Caracter,70
	jne fila6
	mov posicion2,0
	selecCo5 bdtosx,bdtos6, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila6:
	cmp Caracter,71
	jne fila7
	mov posicion2,0
	selecCo6 bdtosx,bdtos7, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila7:
	cmp Caracter,72
	jne fila8
	mov posicion2,0
	selecCo7 bdtosx,bdtos8, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila8:
	cmp Caracter,73
	jne fila9
	mov posicion2,0
	selecCo8 bdtosx,bdtos9, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila9:
	cmp Caracter,74
	jne fila10
	mov posicion2,0
	selecCo9 bdtosx,bdtos10, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila10:
	cmp Caracter,75
	jne fila11
	mov posicion2,0
	selecCo10 bdtosx,bdtos11, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila11:
	cmp Caracter,76
	jne fila12
	mov posicion2,0
	selecCo11 bdtosx,bdtos12, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC
	
	fila12:
	cmp Caracter,77
	jne fila13
	mov posicion2,0
	selecCo12 bdtosx,bdtos13, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila13:
	cmp Caracter,78
	jne fila14
	mov posicion2,0
	selecCo13 bdtosx,bdtos14, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila14:
	cmp Caracter,79
	jne fila15
	mov posicion2,0
	selecCo14 bdtosx,bdtos15, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila15:
	cmp Caracter,80
	jne fila16
	mov posicion2,0
	selecCo15 bdtosx,bdtos16, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila16:
	cmp Caracter,81
	jne fila17
	mov posicion2,0
	selecCo16 bdtosx,bdtos17, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila17:
	cmp Caracter,82
	jne fila18
	mov posicion2,0
	MOV CaracterMos,0
	selecCo17 bdtosx,bdtos18, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila18:
	cmp Caracter,83
	jne fila19
	mov posicion2,0
	selecCo18 bdtosx,bdtos19, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila19:
	cmp Caracter,84
	jne fila20
	mov posicion2,0
	selecCo19 bdtosx,bdtos20, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila20:
	cmp Caracter,85
	jne fila21
	mov posicion2,0
	selecCo20 bdtosx,bdtos21, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila21:
	cmp Caracter,86
	jne fila22
	mov posicion2,0
	selecCo21 bdtosx,bdtos22, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila22:
	cmp Caracter,87
	jne fila23
	mov posicion2,0
	selecCo22 bdtosx,bdtos23, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila23:
	cmp Caracter,88
	jne fila24
	mov posicion2,0
	selecCo23 bdtosx,bdtos24, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila24:
	cmp Caracter,89
	jne fila25
	mov posicion2,0
	selecCo24 bdtosx,bdtos25, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC

	fila25:
	cmp Caracter,90
	mov posicion2,0
	selecCo25 bdtosx,bdtos26, posicion2,bdtos1, CaracterMos
	jmp ContinuarContC




	

	
	
	Segunda:
	INVOKE StdOut, ADDR IngreseM
	INVOKE StdIn, ADDR mensaje,100
	LEA ESI, mensaje
	ContarLeM2:
		xor cl,cl
		mov cl, 0
		CMP [ESI],cl
		JE	seguir2
		inc esi
		inc contadorM2
		jmp ContarLeM2

	


	seguir2:
	xor eax,eax
	mov al,contadorM2
	cmp contador,al
	je AntesSalir

	xor ecx,ecx
	MOV ecx,posicion

	mov al,[mensaje+ecx]
	mov Caracter,al

	inc contador
	inc posicion

	cmp Caracter,65
	jne col1
	inc ContA
	jmp seguir2

	col1:
	cmp Caracter,66
	jne col2
	inc ContB
	jmp seguir2

	col2:
	cmp Caracter,67
	jne col3
	inc ContC
	jmp seguir2

	col3:
	cmp Caracter,68
	jne col4
	inc ContD
	jmp seguir2

	col4:
	cmp Caracter,69
	jne col5
	inc ContE
	jmp seguir2

	col5:
	cmp Caracter,70
	jne col6
	inc ContF
	jmp seguir2

	col6:
	cmp Caracter,71
	jne col7
	inc ContG
	jmp seguir2

	col7:
	cmp Caracter,72
	jne col8
	inc ContH
	jmp seguir2

	col8:
	cmp Caracter,73
	jne col9
	inc ContI
	jmp seguir2

	col9:
	cmp Caracter,74
	jne col10
	inc ContJ
	jmp seguir2

	col10:
	cmp Caracter,75
	jne col11
	inc ContK
	jmp seguir2

	col11:
	cmp Caracter,76
	jne col12
	inc ContL
	jmp seguir2
	
	col12:
	cmp Caracter,77
	jne col13
	inc ContM
	jmp seguir2

	col13:
	cmp Caracter,78
	jne col14
	inc ContN
	jmp seguir2

	col14:
	cmp Caracter,79
	jne col15
	inc ContO
	jmp seguir2

	col15:
	cmp Caracter,80
	jne col16
	inc ContP
	jmp seguir2

	col16:
	cmp Caracter,81
	jne col17
	inc ContQ
	jmp seguir2

	col17:
	cmp Caracter,82
	jne col18
	inc ContR
	jmp seguir2

	col18:
	cmp Caracter,83
	jne col19
	inc ContS
	jmp seguir2

	col19:
	cmp Caracter,84
	jne col20
	inc ContT
	jmp seguir2

	col20:
	cmp Caracter,85
	jne col21
	inc ContU
	jmp seguir2

	col21:
	cmp Caracter,86
	jne col22
	inc ContV
	jmp seguir2

	col22:
	cmp Caracter,87
	jne col23
inc ContW
	jmp seguir2

	col23:
	cmp Caracter,88
	jne col24
	inc ContX
	jmp seguir2

	col24:
	cmp Caracter,89
	jne col25
	inc ContY
	jmp seguir2

	col25:
	cmp Caracter,90
	inc ContZ
	jmp seguir2

	
	jmp seguir2

	AntesSalir:
	print chr$(13,10)
	;A
	print chr$(13,65)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContA
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)
	;B
	print chr$(13,10)
	print chr$(13,66)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContB
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;C
	print chr$(13,10)
	print chr$(13,67)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContC
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)


	;D
	print chr$(13,10)
	print chr$(13,68)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContD
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;E
	print chr$(13,10)
	print chr$(13,69)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContE
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;F
	print chr$(13,10)
	print chr$(13,70)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContF
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;G
	print chr$(13,10)
	print chr$(13,71)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContG
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)
	;H
	print chr$(13,10)
	print chr$(13,72)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContH
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)
	;I
	print chr$(13,10)
	print chr$(13,73)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContI
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;J
	print chr$(13,10)
	print chr$(13,74)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContJ
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;K
	print chr$(13,10)
	print chr$(13,75)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContK
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

		;L
	print chr$(13,10)
	print chr$(13,76)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContL
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)
		;M
	print chr$(13,10)
	print chr$(13,77)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContM
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;N
	print chr$(13,10)
	print chr$(13,78)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContN
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;O
	print chr$(13,10)
	print chr$(13,79)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContO
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;P
	print chr$(13,10)
	print chr$(13,80)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContP
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;Q
	print chr$(13,10)
	print chr$(13,81)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContQ
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;R
	print chr$(13,10)
	print chr$(13,82)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContR
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;S
	print chr$(13,10)
	print chr$(13,83)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContS
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;T
	print chr$(13,10)
	print chr$(13,84)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContT
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;U
	print chr$(13,10)
	print chr$(13,85)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContU
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;V
	print chr$(13,10)
	print chr$(13,86)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContV
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;W
	print chr$(13,10)
	print chr$(13,87)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContW
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;X
	print chr$(13,10)
	print chr$(13,88)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContX
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;Y
	print chr$(13,10)
	print chr$(13,89)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContY
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	;Z
	print chr$(13,10)
	print chr$(13,90)
	XOR AX,AX
	XOR BX,BX
	MOV AL, 100
	MOV BL , ContZ
	MUL BL
	print str$(AX)
	print chr$(47)
	print str$(contadorM2)

	salir:
	INVOKE ExitProcess,0
main ENDP
END program