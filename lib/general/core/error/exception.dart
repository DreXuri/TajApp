class ServerException implements Exception {
  final String message;
  const ServerException({required this.message});
}

class CacheException extends ServerException {
  const CacheException({required String message}) : super(message: message);
}

class NoNetworkException extends ServerException {
  const NoNetworkException({required String message}) : super(message: message);
}
