.equ TOKEN_ACCOUNT_BALANCE, 0x00a0
.equ BALANCE_OFFSET, 160
.equ MINIMUM_BALANCE, 0x2918

.globl entrypoint
entrypoint:
  ldxdw r3, [r1+MINIMUM_BALANCE]
  ldxdw r4, [r1+TOKEN_ACCOUNT_BALANCE]
  jge r3, r4, end

  lddw r1, e
  lddw r2, 17
  call sol_log_
  lddw r0, 1

end:
  exit

.rodata
  e: .ascii "Slippage exceeded"