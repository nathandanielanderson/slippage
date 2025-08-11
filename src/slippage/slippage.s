.equ TOKEN_ACCOUNT_BALANCE, 0x00a0
.equ BALANCE_OFFSET, 160
.equ MINIMUM_BALANCE, 0x2918

.globl entrypoint
entrypoint:
  lddw r1, message
  lddw r2, 14
  call sol_log_
  exit
.rodata
  message: .ascii "Hello, Solana!"
