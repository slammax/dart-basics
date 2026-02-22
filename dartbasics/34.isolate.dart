import 'dart:isolate';

Future<void> main() async {
  final numberslList = List.generate(20, (i) => i + 1);
  final isolatesCount = 4;

  final resultResultList = <int>[];

  for (var i = 0; i < isolatesCount; i++) {
    final stepSize = numberslList.length ~/ isolatesCount;
    final sublist = numberslList.sublist(i * stepSize, (i + 1) * stepSize);

    final receivePort = ReceivePort();

    Isolate.spawn(mathIsolate, [sublist, receivePort.sendPort, i]);
    receivePort.listen((data) {
      resultResultList.addAll(data as List<int>);
    });
  }
  print('Все посчитано:\n$resultResultList');
}

void mathIsolate(List<Object> args) {
  final numbersList = args[0] as List<int>;
  final sendPort = args[1] as SendPort;
  final index = args[2] as int;

  final resultList = <int>[];

  for (final number in numbersList) {
    Future.delayed(Duration(seconds: 5)).whenComplete(() {
      final result = number * number;
      resultList.add(result);
      print('Изолят $index посчитал - $result');
    });
  }
  sendPort.send(resultList);
  print('Изолят $index закончил работу');
}
