void main() {
  var scooter1 = (Scooter(id: 1, batteryLevel: 100, isRented: false));

  print(scooter1);
  scooter1.startRide(90);
  print(scooter1);
}

class Scooter {
  final id;
  int _batteryLevel;
  bool _isRented;

  Scooter({required this.id, required int batteryLevel, required bool isRented})
    : _batteryLevel = batteryLevel,
      _isRented = isRented;

  int get batteryLevel => _batteryLevel;
  bool get isRented => _isRented;

  void startRide(int minutes) {
    if (_isRented || (_batteryLevel - minutes) < 10) {
      print('Этот самокат нельзя использовать!');
    } else {
      _isRented = true;
      _batteryLevel -= minutes;
      print('Вы арендовали самокат');
    }
  }

  void finishRide() {
    _isRented == false;
  }

  @override
  String toString() {
    return 'Статус самоката: $_isRented. Заряд: $_batteryLevel';
  }
}
