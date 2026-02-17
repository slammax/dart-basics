void main() {
  final students = <String>['Женя', 'Саша', 'Петя'];
  print(students);

  for (final student in students) {
    print(student);
  }

  while (students.isNotEmpty) {
    students.removeLast();
  }

  var a = 10;
  while (a < 1000) {
    a = a * 2;
    print(a);
  }
}
