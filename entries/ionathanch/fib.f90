PROGRAM main
  ! The 93rd Fibonacci number is the largest that fits in 64 bits anyway
  CHARACTER(3) :: kth
  INTEGER :: k
  CALL get_command_argument(1, kth)
  READ(kth, *) k
  WRITE(*, *) fib(k)
CONTAINS

PURE RECURSIVE INTEGER*8 FUNCTION fib(k) RESULT(n)
  INTEGER, INTENT (IN) :: k
  IF (k == 0) THEN
    n = 0
  ELSE IF (k == 1) THEN
    n = 1
  ELSE
    n = fib(k - 1) + fib(k - 2)
  END IF
END FUNCTION fib

END PROGRAM
