mov al, 65 ; Empezamos por A mayúscula
mov ah, 0x0e
mov bh, 1 ; 1 = se suma -> a minúscula; 0 = se resta -> a mayúscula

loop:
	int 0x10
	inc al
	cmp bh, 1
	je plus32
	jne minus32

plus32:
	mov bh, 0
	add al, 32
	cmp al, 123
	jne loop

minus32:
	mov bh, 1
	add al, -32
	cmp al, 91
	jne loop

main:
	jmp $
	times 510-($-$$) db 0
	db 0x55, 0xaa
