global _start

section .text
_start:
    mov rax, 1          ; Номер системного виклику write
    mov rdi, 1          ; Файловий дескриптор (1 = stdout)
    mov rsi, message    ; Адреса повідомлення
    mov rdx, msg_len    ; Довжина повідомлення (обчислює асемблер)
    syscall

    mov rax, 60         ; Номер системного виклику exit
    xor rdi, rdi        ; Статус виходу 0
    syscall

section .data
message: db "KI-251 Slavin", 10
msg_len  equ $ - message