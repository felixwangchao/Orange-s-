	org 07c00h			;tell compilater load the program at 7c00
	mov ax, cs
	mov ds, ax
	mov es, ax
	call DispStr
	jmp $
DispStr:
	mov ax, BootMessage
	mov bp, ax
	mov cx, 16
	mov ax, 01301h
	mov bx, 000ch
	mov dl, 0
	int 10h
	ret
BootMessage:		db "Hello, OS world!"	; wirte the string in memory
times 510-($-$$)	db 0			; fill all the rest by 0, there are 512 byte code 
dw 0xaa55					; finish
