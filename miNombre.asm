mov ah, 0x0e
mov al, 'R'
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, 'm'
int 0x10

mov ah, 0x0e
mov al, 'o'
int 0x10

mov ah, 0x0e
mov al, 'n'
int 0x10

mov ah, 0x0e
mov al, ' '
int 0x10

mov ah, 0x0e
mov al, 'h'
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, ' '
int 0x10

mov ah, 0x0e
mov al, 'e'
int 0x10

mov ah, 0x0e
mov al, 's'
int 0x10

mov ah, 0x0e
mov al, 't'
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, 'd'
int 0x10

mov ah, 0x0e
mov al, 'o'
int 0x10

mov ah, 0x0e
mov al, ' '
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, 'q'
int 0x10

mov ah, 0x0e
mov al, 'u'
int 0x10

mov ah, 0x0e
mov al, 'i'
int 0x10

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
