void main() {
  try {
    print(divide(1, 0));
    print('Все хорошо');
  } on Exception catch (e) {
    print('Произошла ошибка\n' + e.toString());
  } finally {
    print('Конец работы функции');
    ;
  }
}

num divide(num a, num b) {
  if (b == 0) {
    throw Exception('Делить на 0 нельзя');
  }
  return a / b;
}
