; counter.asm - The Counter Machine
; assemble: nasm -f bin counter.asm -o counter.com
bits 16
org 0x100

section .text

start:
    mov cx, 1           ; our counter
loop:
    mov ah, 2
    mov dl, cl
    add dl, 0x30        ; '0'
    int 0x21            ; reads character with echo

    mov ah, 9
    mov dx, newline
    int 0x21            ; print string

    inc cx              ; if increasing our counter
    cmp cx, 9           ; keeps counter <= 9
    jle loop            ; then we iterate

    mov ax, 0x4C00
    int 0x21            ; exit with exit code 0

newline:
    db 0x0D, 0x0A, "$"

