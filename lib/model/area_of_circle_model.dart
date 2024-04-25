class AreaOfCircleModel {
  final double radius;

  AreaOfCircleModel({
    required this.radius,
  });
  double calcArea() {
    return 3.14 * (radius * radius);
  }
}
