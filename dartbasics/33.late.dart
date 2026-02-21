void main() {
  final user = User(height: 194, weight: 95);

  print(user.bmi);
}

class User {
  final double height;
  final double weight;
  late final double bmi;

  User({required this.height, required this.weight}) {
    bmi = weight / (height * height);
  }
}
