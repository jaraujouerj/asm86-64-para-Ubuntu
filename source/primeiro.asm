; Exemplo simples que demonstra o formato e o layout básicos do programa.
; Ed Jorgensen
; July 18, 2014
; ************************************************************

; Algumas declarações básicas de dados
section .data

; -----
; Define constantes
EXIT_SUCCESS equ 0   ; successful operation
SYS_exit     equ 60  ; call code for terminate

; -----
; Declarações de variáveis Byte (8-bits)

bVar1   db 17
bVar2   db 9
bResult db 0

; -----
; Declarações de variáveis word (16-bits)

wVar1   dw 17000
wVar2   dw 9000
wResult dw 0

; -----
; Declarações de variáveis word dupla (32-bits)

dVar1   dd 17000000
dVar2   dd 9000000
dResult dd 0

; -----
; Declarações de variáveis quad-word dupla (64-bits)

qVar1   dq 170000000
qVar2   dq 90000000
qResult dq 0

; ************************************************************
; Seção de código

section .text
global _start
_start:

; Executa uma série de operações de adição muito básicas
; para demonstrar o formato básico do programa.

; ----------
; Exemplo de byte
; bResult = bVar1 + bVar2

    mov al, byte [bVar1]
    add al, byte [bVar2]
    mov byte [bResult], al

; ----------
; Exemplo word
; wResult = wVar1 + wVar2

    mov ax, word [wVar1]
    add ax, word [wVar2]
    mov word [wResult], ax

; ----------
;Exemplo double-word
; dResult = dVar1 + dVar2

    mov eax, dword [dVar1]
    add eax, dword [dVar2]
    mov dword [dResult], eax

; ----------
; Exemplo quad-word
; qResult = qVar1 + qVar2

    mov rax, qword [qVar1]
    add rax, qword [qVar2]
    mov qword [qResult], rax

; ************************************************************
; Feito, termina o programa.

last:
    mov rax, SYS_exit       ; Call code for exit
    mov rdi, EXIT_SUCCESS   ; Exit program with success
    syscall
