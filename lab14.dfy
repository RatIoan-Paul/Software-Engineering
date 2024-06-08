//1
method Fibonacci(n: nat) returns (res: nat)
  requires n >= 0
  ensures res == fib(n)
  decreases n
{
  if n <= 1 {
    return n;
  } else {
    return Fibonacci(n - 1) + Fibonacci(n - 2);
  }
}

//2
function F(x: int): int {
  if x < 10 then x else F(x - 1)
  // Descreștere: x. Funcționează deoarece x scade constant cu 1 până devine mai mic de 10.
}

function G(x: int): int {
  if 0 <= x then G(x - 2) else x
  // Descreștere: x. Funcționează deoarece x scade constant cu 2 până devine negativ.
}

function H(x: int): int {
  if x < -60 then x else H(x - 1)
  // Descreștere: x. Funcționează deoarece x scade constant cu 1 până devine mai mic de -60.
}

function I(x: nat, y: nat): int {
  if x == 0 || y == 0 then 12
  else if x % 2 == y % 2 then
    I(x - 1, y)
  else
    I(x, y - 1)
    // Descreștere: x + y. Funcționează deoarece fie x fie y scade constant cu 1 până unul dintre ele devine 0.
}

function I(x: nat, y: nat): int {
  if x == 0 || y == 0 then 12
  else if x % 2 == y % 2 then
    I(x - 1, y)
  else
    I(x, y - 1)
    // Descreștere: x + y. Funcționează deoarece fie x fie y scade constant cu 1 până unul dintre ele devine 0.
}
