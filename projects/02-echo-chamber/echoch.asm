; echoch.asm - Echo chamber
; assemble: nasm -f bin echoch.asm -o echoch.com
bits 16
org 0x100

section .text

start:
    mov ah, 1
    int 0x21            ; reads character with echo

    cmp al, 27          ; escape
    je exit
    jmp start

exit:
    mov ax, 0x4C00
    int 0x21            ; exit with exit code 0

