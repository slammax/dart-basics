// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  final storage = Storage<int>(2);
  storage.value = 5;

  print(storage.read());
  storage.update(7);
  print(storage.read());

  final storage2 = Storage('Текст');
  storage2.value = 'Строка';
  print(storage2.read());
}

class Storage<T> {
  Storage(this.value);
  T value;

  T read() => value;

  void update(T v) {
    value = v;
  }
}
