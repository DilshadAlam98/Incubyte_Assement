import 'package:incubyte_assement/utils/exceptions.dart';
import 'package:incubyte_assement/utils/string_extension.dart';

class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      final delimiterEnd = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEnd);
      numbers = numbers.substring(delimiterEnd + 1);
    }

    numbers = numbers.replaceAll('\n', delimiter);

    List<String> numberStrings = numbers.split(delimiter);
    _checkForNegatives(numberStrings);

    int sum = 0;
    for (String numStr in numberStrings) {
      int? value = numStr.toInt();
      sum += value;
    }

    return sum;
  }

  static void _checkForNegatives(List<String> numberStrings) {
    List<String> negatives = [];
    for (String numStr in numberStrings) {
      int? value = numStr.toInt();
      if (value < 0) {
        negatives.add(numStr);
      }
    }

    if (negatives.isNotEmpty) {
      throw NegativeNumberException(
        'Negative numbers not allowed: ${negatives.join(', ')}',
      );
    }
  }
}
