void main() {
  const max = Human(name: 'Макс', age: 27, height: 194);

  print(max);
  print(max.name);
  print(max.age);
  print(max.height);
}

class Human {
  const Human({required this.name, required this.age, required this.height});

  final String name;
  final int age;
  final int height;
}
