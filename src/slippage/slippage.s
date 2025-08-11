.equ TOKEN_ACCOUNT_BALANCE, 0x00a0
.equ TOKEN_ACCOUNT_DATA_LEN, 0x0058
.equ MINIMUM_BALANCE, 0x2910

.globl entrypoint
entrypoint:

  ldxdw r3, [r1+MINIMUM_BALANCE]
  ldxdw r5, [r1+TOKEN_ACCOUNT_DATA_LEN]
  add64 r3, r5
  ldxdw r4, [r1+TOKEN_ACCOUNT_BALANCE]
  

  
  jge r4, r3, end

  lddw r1, e
  lddw r2, 17
  call sol_log_
  lddw r0, 1

end:
  exit

.rodata
  e: .ascii "Slippage exceeded"