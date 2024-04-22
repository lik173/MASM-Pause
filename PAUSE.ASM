.model small

.data
msg db 'Press any key to continue...', '$'
nl db 10, '$'

.code
main proc
        xor ax, ax
        mov ax, @data
        mov ds, ax
        mov dx, offset msg
        mov ah, 09h
        int 21h
        mov ah, 01h
        int 21h
        mov ah, 09h
        mov dx, offset nl
        int 21h
        mov al, 0
        mov ah,4Ch
        int 21h

main endp


END main
