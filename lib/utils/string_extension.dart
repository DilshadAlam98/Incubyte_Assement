import 'package:incubyte_assement/utils/exceptions.dart';

extension StringToInt on String? {
  int toInt() {
    final trimmed = this?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      throw NumberParseException("String value cannot be null or empty");
    }

    final value = int.tryParse(trimmed);
    if (value == null) {
      throw NumberParseException("Invalid String value: '$trimmed'");
    }

    return value;
  }
}
