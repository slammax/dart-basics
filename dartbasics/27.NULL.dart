void main() {
  String? boxOfEgs;
  print(boxOfEgs);

  final storage = Storage<String>();
  print(storage.value);
  storage.update('new');
  print(storage.value);
}

class Storage<T> {
  Storage({this.value});
  T? value;

  T? read() => value;

  void update(T v) {
    value = v;
  }
}
