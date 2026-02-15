void main() {
  final students = <String, double>{
    'Макс': 4.5,
    'Вера': 2,
    'Саша': 3.4,
    'Коля': 5,
  };
  print(students);

  students['Миша'] = 3.6;
  print(students);

  students.addAll({'Женя': 2, 'Юра': 3.4});
  print(students);

  print(students.length);

  print(students.keys.toList());
  print(students.values.toList());
}
