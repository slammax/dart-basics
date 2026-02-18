void main() {
  var max = Human(name: 'Макс', age: 27, height: 194);

  print(max.age);
  max.growUp(2);
  print(max.age);
}

class Human {
  Human({required this.name, required int age, required this.height})
    : _age = age;

  int get age => _age;
  set age(int value) => _age = value;

  final String name;
  int
  _age; //Сработает только в другом файле, в рамках текущего файла останется доступной.
  int height;

  void growUp(int years) {
    _age += years;
  }

  @override
  String toString() {
    return 'Человек, Имя $name, Возраст; $_age, Рост: $height';
  }
}
