import 'dart:math';

void main() async {
  final ord1 = await makeCoffee(1);
  final ord2 = await makeCoffee(2);
  final ord3 = await makeCoffee(3);
  final allTime = ord1 + ord2 + ord3;

  print('Кофейня закрылась');
  print('Все коффе приготовили за $allTime');
}

Future<int> makeCoffee(int orderNumber) async {
  print('Делаем кофе: $orderNumber');

  final ranndom = Random();
  final seconds = ranndom.nextInt(5);
  await Future.delayed(Duration(seconds: seconds));

  print('Кофе $orderNumber готов за $seconds секунд.');
  return seconds;
}
