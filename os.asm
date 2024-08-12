; Ahora voy a guardar los datos del teclado en una variable
[org 0x7c00]

mov ah, 0x0e
mov bx, first

printFirst:
	mov al, [bx]	; Copiamos el caracter actual al registro "al" para mostrarlo
	cmp al, 0		; Vemos si el caracter actual es el '\0' antes de mostrarlo
	je getPass1		; Si es el 0, pasamos a guardar la contrasena
	int 0x10		; Si seguimos aqui, mostramos el caracter por pantalla
	inc bx			; Pasamos al siguiente caracter sumando 1 a bx
	jmp printFirst	; Repetimos el bucle

getPass1:
	mov ax, 0		; Ponemos el modo de leer el teclado
	mov bx, password
getPass:
	int 0x16			; Capturamos la tecla que sea
	cmp al, 13			; Miramos si tenemos Enter antes de mostrarlo
	je finishPassword	; Si tenemos el Enter, pasamos a terminar la contrasena con un caracter 0
	mov [bx], al		; Si no, guardamos la tecla que sea en la posicion que toque de la password
	inc bx				; Sumamos 1 al indice del array de la contrasena
	jne getPass			; Si no tenemos Enter, seguimos en el bucle

finishPassword:
	inc bx
	mov cx, 0
	mov [bx], cx
	jmp printFinal1

printFinal1:
	mov ah, 0x0e
	mov bx, final

printFinal:
	mov al, [bx]	; Ponemos el caracter actual en al para mostrarlo
	cmp al, 0		; Vemos si el caracter actual es el '\0' antes de mostrarlo
	je printPass1	; Si es el 0, pasamos a mostrar la contrasena
	int 0x10		; Si seguimos aqui, mostramos el caracter por pantalla
	inc bx			; Pasamos al siguiente caracter sumando 1 a bx
	jmp printFinal	; Repetimos el bucle

printPass1:
	mov ah, 0x0e
	mov bx, password

printPass:
	mov al, [bx]	; Ponemos el caracter actual en al para mostrarlo
	cmp al, 0		; Vemos si el caracter actual es el '\0' antes de mostrarlo
	je main			; Si es el 0, pasamos a la parte final: el final del programa
	cmp bx, 20		; Si estamos en el indice 256, tambien saltamos
	je main
	int 0x10		; Si seguimos aqui, mostramos el caracter por pantalla
	inc bx			; Pasamos al siguiente caracter sumando 1 a bx
	jmp printPass	; Repetimos el bucle

first:
	db "Inserta tu contrasena y pulsa Enter cuando acabes: ", 0

final:
	db "Tu contrasena era: ", 0

password:
	times 20 db 0	; 256 caracteres como maximo

main:
	jmp $
	times 510-($-$$) db 0
	db 0x55, 0xaa
