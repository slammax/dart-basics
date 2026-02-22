import 'dart:isolate';

Future<void> main() async {
  final receivePort = ReceivePort();
  Isolate.spawn(mathOperation, [10, receivePort.sendPort]);

  final result = await receivePort.first;
  print(result);
}

void mathOperation(List<Object> args) {
  final number = args[0] as int;
  final sendPort = args[1] as SendPort;

  Future.delayed(Duration(seconds: 5)).whenComplete(() {
    final result = number * number;
    sendPort.send(result);
  });
}
