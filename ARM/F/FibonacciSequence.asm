fibonacciSequence:
  push {R1 - R3}
  mov R1, #0
  mov R2, #1

fibonacciLoop:
  mov R3, R2
  add R2, R1, R2
  mov R1,  R3
  sub R0, R0, #1
  cmp R0, #1
  bne fibonacciLoop
  mov R0, R2
  pop {R1 - R3}
  mov pc, lr
