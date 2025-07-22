class NegativeNumberException implements Exception {
  final String message;

  NegativeNumberException(this.message);

  @override
  String toString() => message;
}

class NumberParseException extends FormatException {
  NumberParseException([super.message = 'Invalid format']);

  @override
  String toString() => 'Formate Exception: $message';
}
