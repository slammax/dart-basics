void main() {
  for (var i = 1; i <= 5; i++) {
    print('Всем привет ' + i.toString());
  }

  final a = 2;
  final n = 4;

  var result = a;

  for (var i = 1; i < n; i++) {
    result = result * a;
  }
  print(result);

  //////////

  final students = <String>['Женя', 'Саша', 'Петя'];
  print(students);

  for (final student in students) {
    print(student);
  }

  //////////

  for (var i = 0; i < students.length; i++) {
    students[i] = students[i] + '' + i.toString();
  }
}
