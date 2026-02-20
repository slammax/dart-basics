void main() {
  const max = Human(name: 'Макс', age: 27, height: 194);

  final djo = max.copyWith(name: 'Джо'); //копируется из max

  print(max.nameAndAge);
  print(djo.nameAndAge);
}

class Human {
  const Human({required this.name, required this.age, required this.height});

  String get nameAndAge => '$name: $age';

  final String name;
  final int age;
  final int height;

  Human copyWith({String? name, int? age, int? height}) {
    return Human(
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
    );
  }
}
