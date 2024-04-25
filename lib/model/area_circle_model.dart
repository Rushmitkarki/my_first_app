class AreaCircleModel {
  final double radius;

  AreaCircleModel({
    required this.radius,
  });

  double calculate() {
    return radius * radius * 22 / 7;
  }
}
