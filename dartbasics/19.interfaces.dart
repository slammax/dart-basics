void main() {
  final wolf = Wolf(4);
  final tiger = Tiger(5);

  wolf.makeSound();
  tiger.makeSound();
  tiger.makePerfoemanceInCircus();
}

abstract interface class Animal {
  double get age;
  void makeSound();
}

class Wolf implements Animal {
  Wolf(this.age);

  @override
  void makeSound() {
    print('Auuuu');
  }

  @override
  final double age;
}

class Tiger implements Animal {
  Tiger(this.age);

  @override
  void makeSound() {
    print('Agrrr');
  }

  void makePerfoemanceInCircus() {
    print('Выступает в цирке');
  }

  @override
  final double age;
}
