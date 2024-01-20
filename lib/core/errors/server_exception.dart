class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Server exception occured'});
}
