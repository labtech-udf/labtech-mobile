class BusisnessException implements Exception {
  final String message;

  BusisnessException(this.message);

  @override
  String toString() => message;
}

