void main() {
  var myBalance = MoneyBox(balance: 100);
  print(myBalance.balance);

  myBalance.addMoney(150);
  print(myBalance.balance);

  int temp1 = 25;
  int temp2 = -50;
  var tempOutside = Thermometer(temp: temp1);
  var tempOutside2 = Thermometer(temp: temp2);

  print(tempOutside);
  print(tempOutside2);

  var myBook = Book(title: 'Изучение Dart', pages: 100);
  print(myBook);
  myBook.read(10);
  print(myBook);
}

class MoneyBox {
  int _balance;

  MoneyBox({int? balance}) : _balance = balance ?? 0;

  int get balance => _balance;

  void addMoney(int amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

class Thermometer {
  int _temp = 0;

  Thermometer({required temp}) {
    this.temp = temp;
  }

  int get temp => _temp;
  set temp(int value) {
    if (value < -50 || value > 50) {
      print(
        'Температура сейчас: $value, это слишком экстремальная температура!',
      );
    } else {
      _temp = value;
      print('Температура сейчас: $value, это отличная температура!');
    }
  }
}

class Book {
  final String title;
  int _pages;

  Book({required this.title, required int pages}) : _pages = pages;

  int get pages => _pages;

  void read(int readPages) {
    if (readPages <= _pages) {
      _pages -= readPages;
    } else
      print('Неверное количество страниц');
  }

  @override
  String toString() {
    return 'Книга $title, осталось страниц к прочтению: $_pages';
  }
}
