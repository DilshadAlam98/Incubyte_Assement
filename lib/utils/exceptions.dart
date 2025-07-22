class NegativeNumberException implements Exception {
  final String message;

  NegativeNumberException(this.message);

  @override
  String toString() => message;
}

class NumberParseException implements Exception {
  final String message;

  NumberParseException(this.message);

  @override
  String toString() => message;
}
