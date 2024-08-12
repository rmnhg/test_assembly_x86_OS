; Code
[org 0x7c00]

mov ah, 0x0e
mov bx, first

printFirst:
	mov al, [bx]
	cmp al, 0
	je label
	int 0x10
	inc bx
	jmp printFirst

label:
	mov ax, 0
	int 0x16
	cmp al, 13 ; Enter
	je printFinal1
	mov ah, 0x0e
	int 0x10
	jne label

printFinal1:
	mov ah, 0x0e
	mov bx, final

printFinal:
	mov al, [bx]
	cmp al, 0
	je main
	int 0x10
	inc bx
	jmp printFinal

first:
	db "Hola ", 0

final:
	db "! Que tal estas?", 0

main:
	jmp $
	times 510-($-$$) db 0
	db 0x55, 0xaa
