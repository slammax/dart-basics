void main() {
  var scooter1 = Scooter(id: 01, batteryLevel: 80, isRented: false);
  var user1 = User(name: 'Макс', balance: 500);

  scooter1.startRide(20);
  user1.spendMoney(100);

  print(scooter1);
  print(user1);
}

class Scooter {
  final int id;
  int _batteryLevel = 0;
  bool _isRented;

  Scooter({required this.id, required int batteryLevel, required bool isRented})
    : _isRented = isRented {
    this.batteryLevel = batteryLevel;
  }

  int get batteryLevel => _batteryLevel;
  bool get isRented => _isRented;

  set batteryLevel(int value) {
    _batteryLevel = value.clamp(0, 100);
  }

  void startRide(int minutes) {
    if (_isRented || (_batteryLevel - minutes) < 10) {
      print('Этот самокат нельзя использовать!');
    } else {
      _isRented = true;
      _batteryLevel -= minutes;
      print('Вы арендовали самокат на $minutes минут');
    }
  }

  void finishRide() {
    _isRented = false;
  }

  @override
  String toString() {
    return 'Статус самоката: $_isRented. Заряд: $_batteryLevel';
  }
}

class User {
  String name;
  double _balance;

  User({required this.name, required double balance}) : _balance = balance;

  double get balance => _balance;

  void topUP(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print('Ваш баланс пополнен на $amount денег');
    } else
      print('Некорректное число');
  }

  void spendMoney(double amount) {
    if (_balance < amount) {
      print('Недостаточно денег');
    } else
      (_balance = _balance - amount);
  }

  @override
  String toString() {
    return '$name, у тебя на счету $_balance';
  }
}
