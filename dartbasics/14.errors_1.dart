void main() {
  try {
    sum(1, 2);
  } catch (e) {
    print('Произошла ошибка\n' + e.toString());
  }
}

int sum(int a, int b) {
  //Якобы нужно доделать
  throw UnimplementedError();
}
