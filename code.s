section .data
  hello db "Hello, Sifat!", 10
  len equ $ - hello

section .text
  global _start

_start:
       mov rax, 1
       mov rdi, 1
       mov rsi, hello
       mov rdx, len
       syscall

       mov rax, 60
       xor rdx, rdx
       syscall
