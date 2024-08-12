; Code
[org 0x7c00]

label:
	mov ax, 0
	int 0x16
	mov ah, 0x0e
	int 0x10
	cmp al, '+' ; Con un + se muestra pero ya dejamos de mostrar mas caracteres
	jne label


main:
	jmp $
	times 510-($-$$) db 0
	db 0x55, 0xaa
