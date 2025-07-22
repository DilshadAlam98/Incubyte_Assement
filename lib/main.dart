import 'package:incubyte_assement/string_calculator.dart';

void main() {
  /// Case 1:  a string of comma-separated numbers
  // Input: 1,5
  // Output: 6
  final case1 = StringCalculator.add("1,5");
  print("Case 1 Output : $case1");

  /// Case 2 : Allow the add method to handle any amount of numbers.
  // Input: 1,5,2,3,4
  // Output: 15
  final case2 = StringCalculator.add("1,5,2,3,4");
  print("Case 2 Output : $case2");

  /// Case 3: Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)
  // Input: "1\n2,3"
  // Output: 6
  final case3 = StringCalculator.add("1\n2,3");
  print("Case 3 Output : $case3");

  /// Case 4: Support different delimiters: [e.g- //,\n,;]
  // Input: "//;\n1;23"
  // Output: 3
  final case4 = StringCalculator.add("//;\n1;2");
  print("Case 4 Output : $case4");

  /// Case 5: Calling add with a negative number will throw an exception: "negative numbers not allowed
  // Input: "1,-2"
  // Output: "Negative number not allowed -2"
  final case5 = StringCalculator.add("1,-2");
  print("Case 5 Output : $case5");
}
