void main() {
  final result = square(square(5));
  print(formatResult(result));

  final result1 = square(square(2));
  print(formatResult(result1));

  final result2 = square(square(8));
  print(formatResult(result2));
}

int square(int number) {
  return number * number;
}

String formatResult(int number) {
  return 'Результат операции: $number';
}
