void main() {
  Function sum = (a, b) => a + b;
  print(sum(2, 3));

  doSomething();

  makeTask(doSomething);

  calc();
}

void makeTask(Function task) {
  print('Запустил задачу');
  task();
  print('Выпполнил задачу');
}

void doSomething() {
  print('Hello');
}

void calc() {
  final sum = (num a, num b) => a + b;
  final diff = (num a, num b) => a - b;
  final divide = (num a, num b) => a / b;
  final multiply = (num a, num b) => a * b;

  print(calculate(1, 2, sum));
  print(calculate(1, 2, diff));
  print(calculate(1, 2, divide));
  print(calculate(1, 2, multiply));
}

num calculate(num a, num b, num Function(num a, num b) action) => action(a, b);
