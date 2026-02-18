void main() {
  print(greaterOrLess(2, 2));

  print(greaterOrLessNew(2, 2));
}

String greaterOrLess(int a, int b) {
  if (a > b) {
    return 'Больше';
  }
  return 'Меньше';
}

String greaterOrLessNew(int a, int b) {
  return (a > b) ? 'Больше' : 'Меньше'; //условие ? выражение_1 : выражение_2
}

String greaterOrLessNew2(int a, int b) {
  return a == b
      ? 'Числа равны'
      : a > b
      ? 'Больше'
      : 'Меньше';
}

//Самая читаемая запись
String greaterOrLessNew3(int a, int b) {
  if (a == b) return 'Числа равны';
  return a > b ? 'Больше' : 'Меньше';
}
