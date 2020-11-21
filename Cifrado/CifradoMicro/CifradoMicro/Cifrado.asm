Mapeo MACRO I,J,Filas,Columnas,Tamano
	;I y J representan el posiciones
	;Filas y columnas cantidad o tamano de filas y columnas
	;Tamano elemento
	xor eax,eax
	xor ebx,ebx
	XOR ECX,ECX
	XOR BX,BX
	XOR AL,AL
	XOR BL,BL
	MOV AL,I
	MOV EBX, 1d
	MUL EBX
	MOV BL, 26
	MUL Bl	;Resultado en AL
	MOV BL, 1
	MUL BX	;Primera parte de formula
	;Columnas
	MOV ECX, EAX	;Moviendo resultado de filas a un registro auxiliar
	MOV AL, J
	MOV EBX, 1d
	MUL EBX
	MOV BL, 1
	MUL Bl
	ADD EAX, ECX	;Sumar el resultado
ENDM

.386 ; 486 586
.MODEL flat, stdcall ; convención de paso de parámetros
;Options
option casemap:none ; convención para mapear caracteres utilizada por Windows.inc

;includes 
INCLUDE \masm32\include\windows.inc
INCLUDE \masm32\include\kernel32.inc
INCLUDE \masm32\include\masm32.inc
INCLUDE \masm32\include\masm32rt.inc

.DATA 
	IngreseM DB  "Ingrese Mensaje: ",0
	IngreseC DB  "Ingrese Clave: ",0
	MenuProy DB  "1. Cifrado Con Variacion 1",13,10,"2. Cifrado Con Variacion 2",13,10,"0. Salir",13,10,0
	;Contadores
	opcionMenu DB 0,0
	Bandera DW 0,0
	Auxiliar DW 0,0
	Iteracion DW 0,0
	Contador DD 0,0
	Inicio DW 0,0
	Caracter Db 65d,0
	X DB 0,0
	Y DB 0,0
	I DB 26,0	;Cantidad de filas
	J DB 26,0	;Cantidad de columnas
	TamanoMatriz DW 676,0
	posicion DD 0,0
	Matriz DB 680 DUP  ("$")
	mensaje DB 150 DUP ("$"),0
	clave DB 150 DUP ("$"),0
	contadorM DB 0,0
	contadorC DB 0,0
	Aux DB 0,0
	Aux2 DB 0,0
	Cu DB 0,0
	Cy DB 0,0
.CODE
programa:

LlenarMatrix PROC NEAR
		LEA EDI, Matriz	
		;LlenarMatriz 
		Escribir:
		XOR Bl,Bl
		MOV Bl,Caracter
		MOV [EDI],Bl
		INC EDI
		INC Inicio
		INC Caracter
		CMP Caracter,91
		JE Aumentar
		XOR AX,AX
		MOV AX, Inicio
		CMP Ax, TamanoMatriz
        JL Escribir
		Aumentar:
		CMP Iteracion , 00
		JG AumCar
		JMP NormalJ
		AumCar:
		XOR BX,BX
		MOV BX, 65
		ADD BX,Bandera
		MOV [EDI],BX
		INC EDI
		INC Inicio
		INC Bandera
		MOV CX, Bandera
		CMP CX, Iteracion
		JL AumCar
		NormalJ:
		INC Iteracion
		XOR BX,BX
		MOV BX, 65
		ADD BX, Iteracion
		MOV Caracter, Bl
		Mov Bandera, 00
		XOR AX,AX
		MOV AX, Inicio	
		CMP Ax, TamanoMatriz
		JL Escribir
LlenarMatrix ENDP

;MOSTRAR MENU
INVOKE StdOut, ADDR MenuProy
INVOKE StdIn, ADDR opcionMenu,50

mov dl,opcionMenu
sub dl, 30h
cmp dl,1
JE OpcionUno
cmp dl,2
JE OpcionDos
cmp dl, 0
JE FIN

OpcionUno:
opcionUno PROC Near
;PEDIR MENSAJE Y CLAVE
			INVOKE StdOut, ADDR IngreseM
			INVOKE StdIn, ADDR mensaje,100

			INVOKE StdOut, ADDR IngreseC
			INVOKE StdIn, ADDR clave,100

;CONTAR CANTIDAD DE LETRAS DE MENSAJE Y CLAVE
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
		
;INICIAR CIFRADO
		lea edi, mensaje
		lea esi, clave
		
		cifrarMen:
;OBTENER POSICIONES BASADAS EN LAS LETRAS DEL MENSAJE Y CLAVE
			XOR AL,AL
			mov AL, [edi]
			mov Cu,AL
			sub AL, 65
			mov X, AL
			XOR BL,BL
			mov BL, [esi]
			mov Cy,BL
			sub BL, 65
			mov Y, BL
;MAPEO LEXICOGRAFICO
			Mapeo X,Y,I,J,1	
			MOV posicion, EAX
;IMPRESION DE NUEVO CARACTER, ACCEDIENDO A SU POSICION EN LA MATRIZ
			LEA EDX, Matriz
			ADD EDX,posicion
			XOR Al,Al
			MOV Al, [EDX]
			MOV Caracter,Al
			INVOKE StdOut, ADDR Caracter
;AUMENTAR POSICIONES	
			MOV posicion,0
			inc edi
			inc esi
			inc Aux
			inc Aux2
			XOR AL,AL
			mov al ,Aux2
;VALIDAR SE SE HA TERMINADO LA CLAVE
			cmp al, contadorC
			JE rest
;VALIDAR SI SE HA TERMINADO EL MENSAJE
			deRegreso:
			XOR AL,AL
			mov al ,Aux
			cmp al, contadorM
			JL cifrarMen
			JMP continue
;REINICIAR LA CLAVE
		rest:
			lea esi, clave
			mov Aux2, 0
			jmp deRegreso
		continue:
opcionUno ENDP
JMP FIN

OpcionDos:
opcionDos PROC Near
;PEDIR MENSAJE Y CLAVE
			INVOKE StdOut, ADDR IngreseM
			INVOKE StdIn, ADDR mensaje,100
			INVOKE StdOut, ADDR IngreseC
			INVOKE StdIn, ADDR clave,100
;CONTAR CANTIDAD DE LETRAS DE MENSAJE Y CLAVE
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
;INICIAR CIFRADO
		lea edi, mensaje
		lea esi, clave
;OBTENER POSICIONES BASADAS EN LAS LETRAS DEL MENSAJE Y CLAVE	
		cifrarMen:
			XOR AL,AL
			mov AL, [edi]
			sub AL, 65
			mov X, AL
			XOR BL,BL
			mov BL, [esi]
			sub BL, 65
			mov Y, BL
;MAPEO LEXICOGRAFICO
			Mapeo X,Y,I,J,1	
			MOV posicion, EAX
;IMPRESION DE NUEVO CARACTER, ACCEDIENDO A SU POSICION EN LA MATRIZ
			LEA EDX, Matriz
			ADD EDX,posicion
			XOR Al,Al
			MOV Al, [EDX]
			MOV Caracter,Al
			;Se imprime el numero
			INVOKE StdOut, ADDR Caracter
;AUMENTAR POSICIONES	
			MOV posicion,0
			inc edi
			inc esi
			inc Aux
			inc Aux2
			XOR AL,AL
			mov al ,Aux2
;VALIDAR SE SE HA TERMINADO LA CLAVE
			cmp al, contadorC
			JE rest
			deRegreso:
			XOR AL,AL
			mov al ,Aux
			cmp al, contadorM
;VALIDAR SI SE HA TERMINADO EL MENSAJE
			JL cifrarMen
			JMP continue
		rest:
;REINICIAR CON MENSAJE
			lea esi, mensaje
			mov Aux2,0
			jmp deRegreso
		continue:
opcionDos ENDP
JMP FIN

FIN:
	INVOKE ExitProcess, 0
END programa