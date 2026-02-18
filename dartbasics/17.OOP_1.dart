void main() {
  var max = Human(name: 'Макс', age: 27, height: 194);

  print(max);
  print(max.name);
  print(max.age);
  print(max.height);

  max.age = 28;
  print(max.age);
}

class Human {
  Human({required this.name, required this.age, required this.height});

  final String name;
  int age;
  int height;
}
