void main() {
  var max = Human(name: 'Макс', age: 27, height: 194);
  print(max.name);
  print(Human.count);

  var vova = Human(name: 'Вова', age: 27, height: 194);
  print(vova.name);
  print(Human.count);
}

class Human {
  Human({required this.name, required this.age, required this.height}) {
    count += 1;
  }

  static int count = 0;

  final String name;
  int age;
  int height;
}
