import 'dart:isolate';

void main() {
  Isolate.spawn((String args) => sayHello(args), 'Макс');
}

void sayHello(String name) {
  print('Привет $name из изолята');
}
