void main(List<String> args) {
  int number = int.tryParse(args[0]) ?? 0;

  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}
