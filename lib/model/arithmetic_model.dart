class ArithmeticModel {
  final double first;
  final double second;
 
  ArithmeticModel({
    required this.first,
    required this.second,
  });
 
  double add() {
    return first + second;
  }
 
  double subtract() {
    return first - second;
  }
 
  double multiply() {
    return first * second;
  }
 
  double divide() {
    return first / second;
  }
 
  double calculate(String? group) {
    switch (group) {
      case 'add':
        {
          return first + second;
        }
      case 'subtract':
        {
          return first - second;
        }
      case 'multiply':
        {
          return first * second;
        }
      case 'divide':
        {
          return divide();
        }
      default:
        {
          return 0;
        }
    }
  }
}