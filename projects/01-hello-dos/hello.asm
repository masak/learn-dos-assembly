; hello.asm - Hello world demo
; assemble: nasm -f bin hello.asm -o hello.com
bits 16
org 0x100

section .text

start:
    mov ah, 9
    mov dx, greeting
    int 0x21            ; print string

    mov ah, 2
    mov dl, 0x0a
    int 0x21            ; print carriage return

    mov ah, 2
    mov dl, 0x0d
    int 0x21            ; print newline

    mov ax, 0x4C00
    int 0x21            ; exit with exit code 0

greeting:
    db "Hello, DOS!$"

