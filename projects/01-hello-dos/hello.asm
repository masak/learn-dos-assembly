; hello.asm - Hello world demo
; assemble: nasm -f bin hello.asm -o hello.com
bits 16
org 0x100

section .text

start:
    mov ah, 9
    mov dx, greeting
    int 0x21            ; print string

    mov ax, 0x4C00
    int 0x21            ; exit with exit code 0

greeting:
    db "Hello, DOS!", 0x0D, 0x0A, "$"

