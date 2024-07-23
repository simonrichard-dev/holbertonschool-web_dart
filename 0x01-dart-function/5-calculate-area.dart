double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  String temp = area.toStringAsFixed(2);
  double result = double.parse(temp);
  return(result);
}