abstract class Mapper<From, To> {
  To convert(From dto);
}

class MapperException implements Exception {
  const MapperException(this.message, this.error, this.stackTrace);

  final String message;
  final Object error;
  final StackTrace stackTrace;
}
