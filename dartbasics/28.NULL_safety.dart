void main() {
  String? name = _getUserName();
  if (name != null) {
    print(name.substring(0, 1));
  } else {
    print('Строка пуста');
  }
}

String? _getUserName() {
  return 'Федя';
}
