import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assement/string_calculator.dart';

void main() {
  group('StringCalculator.add()', () {

    test('Case 1: comma-separated numbers (1,5) returns 6', () {
      expect(StringCalculator.add("1,5"), equals(6));
    });

    test('Case 2: handles any amount of numbers (1,5,2,3,4) returns 15', () {
      expect(StringCalculator.add("1,5,2,3,4"), equals(15));
    });

    test('Case 3: handles newlines (1\n2,3) returns 6', () {
      expect(StringCalculator.add("1\n2,3"), equals(6));
    });

    test('Case 4: handles custom delimiter (//;\n1;2) returns 3', () {
      expect(StringCalculator.add("//;\n1;2"), equals(3));
    });

    test('Case 5: throws exception for negatives (1,-2)', () {
      expect(
        () => StringCalculator.add("1,-2"),
        throwsA(
          predicate(
            (e) => e.toString().contains("Negative numbers not allowed: -2"),
          ),
        ),
      );
    });
  });
}
