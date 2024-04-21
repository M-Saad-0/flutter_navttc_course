import 'dart:ffi';
import 'dart:io';

void main() {
  //task1
  double major = 0.06, minor = 0.04;
  const PI = 3.14;
  double area = PI * major * minor;
  print("task 01: $area");
  //task2
  double P = 4000, T = 2, R = 5.5;
  double I = P * T * R / 100;
  print("task 01: $I");
  //task3
  double fahrenheit = double.parse(stdin.readLineSync()!);

  // Calculate Celsius and Kelvin
  double celsius = (fahrenheit - 32) * 5 / 9;
  double kelvin = celsius + 273.15;

  // Print the results
  print("$fahrenheit°F is equal to");
  print("$celsius°C");
  print("$kelvin K");
}
