import 'dart:math';

void main() async {
  makeCoffe(1).then((sec) {
    makeCoffe(2);
  });
  makeCoffe(3);
}

Future<int> makeCoffe(int orderNumber) async {
  print('Делаем кофе: $orderNumber');

  final ranndom = Random();
  final seconds = ranndom.nextInt(5);
  await Future.delayed(Duration(seconds: seconds));

  print('Кофе $orderNumber готов за $seconds секунд.');
  return seconds;
}
