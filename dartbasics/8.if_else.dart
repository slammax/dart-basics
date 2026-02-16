void main() {
  if (1 < 2) {
    print('Правда');
  } else {
    print('Ложь');
  }
  ;

  final students = <String>['Вася', 'Макс'];
  if (students.contains('Настя')) {
    print('Правда, есть Настя');
  } else if (students.contains('Макс')) {
    print('Правда, есть Макс');
  } else {
    print('Ложь');
  }
  ;

  var temp = 45;
  if (temp > -20) {
    if (temp < 30) {
      print('Отличная погода для прогулки');
    } else {
      print('Не стоит идти гулять');
    }
  } else {
    print('Не стоит идти гулять');
  }

  var temp2 = 23;

  if (temp2 > -20 && temp2 < 30) {
    print('Отличная погода для прогулки');
  } else {
    print('Не стоит идти гулять');
  }

  if (temp2 < -20 || temp2 > 30) {
    print('Не стоит идти гулять');
    return;
  }
  print('Отличная погода для прогулки');
}
