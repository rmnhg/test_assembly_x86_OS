[org 0x7c00]
mov ah, 0x0e
mov bx, myStr

loop:
	mov al, [bx]
	cmp al, 0
	je main
	int 0x10
	inc bx
	jmp loop

myStr:
	db "Hola mundo!", 0

main:
	jmp $
	times 510-($-$$) db 0
	db 0x55, 0xaa
