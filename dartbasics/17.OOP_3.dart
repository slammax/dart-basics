void main() {
  var max = Human(name: 'Макс', age: 27, height: 194);
  var alice = Artist(name: 'Алиса', age: 20, height: 184, style: 'Графика');
  var vova = Mechanik(name: 'Вова', age: 45, height: 189, category: 1);
  var soma = Cook(name: 'Сома', age: 19, height: 190, position: 'Шеф');

  print(max);
  print(alice);
  print(vova);
  print(soma);

  vova.fixCar();
  alice.drawPicture();
  soma.cookMeal();
  soma.growUp(2);

  print(soma.age);
}

class Human {
  Human({required this.name, required this.age, required this.height});

  final String name;
  int age;
  int height;

  void growUp(int years) {
    age += years;
  }

  @override
  String toString() {
    return 'Человек, Имя: $name, Возраст: $age, Рост: $height';
  }
}

class Artist extends Human {
  Artist({
    required super.name,
    required super.age,
    required super.height,
    required this.style,
  });

  void drawPicture() {
    print('$name рисует картину');
  }

  String style;

  @override
  String toString() {
    return super.toString() + ' ' + 'Художник, Стиль: $style';
  }
}

class Mechanik extends Human {
  Mechanik({
    required super.name,
    required super.age,
    required super.height,
    required this.category,
  });

  void fixCar() {
    print('$name чинит машину');
  }

  int category;

  @override
  String toString() {
    return super.toString() + ' ' + 'Механик, Категория: $category';
  }
}

class Cook extends Human {
  Cook({
    required super.name,
    required super.age,
    required super.height,
    required this.position,
  });

  void cookMeal() {
    print('$name готовит ужин');
  }

  String position;

  @override
  String toString() {
    return super.toString() + ' ' + 'Повар, Должность: $position';
  }
}
