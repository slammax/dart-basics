void main() {
  var max = Human(name: 'Макс', age: 27, height: 194);
  var mike = Human(name: 'Миша', age: 25, height: 180);

  print(max);
  max.growUp(2);
  print(max);

  print(mike.isHigher(max));
}

class Human {
  Human({required this.name, required this.age, required this.height});

  final String name;
  int age;
  int height;

  void growUp(int years) {
    age += years;
  }

  bool isHigher(Human otherHuman) {
    return this.height > otherHuman.height;
  }

  @override
  String toString() {
    return 'Человек, Имя $name, Возраст; $age, Рост: $height';
  }
}
