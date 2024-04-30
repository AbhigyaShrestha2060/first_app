class ArthmeticModel {
  final int first;
  final int second;
 
  ArthmeticModel({
    required this.first,
    required this.second,
  });
 
  // Add
  int add() {
    return first + second;
  }
  //Subtract
  int subtract() {
    return first - second;
  }
  //Multiply
  int multiply() {
    return first * second;
  }
  //Divide
  int divide() {
    return first ~/ second;
  }
}
 