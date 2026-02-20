abstract class Animal {
  double get age;
  void makeSound();
}

final class Bird extends Animal {
  //final запрещает наследование в других файлах.
  Bird({required this.age});

  @override
  final double age;

  @override
  void makeSound() => print('Звуки птицы');
}

final class Owl extends Bird {
  //в рамках одного файла наследование может быть но с тем же запртеом на внешнее
  Owl({required super.age});
}
