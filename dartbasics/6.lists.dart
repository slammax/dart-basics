void main() {
  final students = <String>['Женя', 'Саша', 'Петя'];
  print(students);
  students.add('Мария');
  print(students);
  students.remove('Женя');
  print(students);
  students.removeAt(0);
  print(students);

  final firstStudent = students[1];
  print(firstStudent);

  students[1] = 'Настя';
  print(students);

  students.addAll(['Виктор', 'Макс']);
  print(students);

  print(students.contains('Виктор'));

  print(students.length);

  print(students.indexOf('Виктор'));

  print(students.indexOf('Викт'));

  final foundStudents = students.where((element) => true);
  print(foundStudents);

  final foundExactlyStudent = students
      .where((element) => element == 'Макс')
      .toList();
  print(foundExactlyStudent);

  students.clear();
  print(students);

  final students2 = <String>['Петя', 'Женя', 'Саша', 'Петя'];
  print(students2);

  final classes = <String>{'1a', '1b', '1a'}; // только уникальные значения
  print(classes);
}
