// First function that accepts two arguments and returns their sum
int add(int a, int b) {
  return a + b;
}

// Second function that accepts two arguments and returns their subtraction
int sub(int a, int b) {
  return a - b;
}

// Third function that returns a message with the output of the two other functions
String showFunc(int a, int b) {
  int sum = add(a, b);
  int diff = sub(a, b);
  return 'Add $a + $b = $sum\nSub $a - $b = $diff';
}
