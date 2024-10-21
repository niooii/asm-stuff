; https://www.learn-c.org/en/Variables_and_Types
; Objective: add a b and c and print the result.

section   .text
  default rel
  extern printf
  global   main 

main:
  push      rbp
  mov       rax, 0
  mov       rdi, msg
  mov       rsi, b
  call      printf wrt ..plt
  pop       rbp
  ; Exit with status 0
  mov       rax, 60
  xor       rdi, rdi
  syscall


section   .data
  a:   dd    3
  b:   dd    4.5
  c:   dq    5.25
  msg: db    "%f", 3, 0
