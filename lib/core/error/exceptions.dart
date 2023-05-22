import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String errorMessage;
  const ServerException({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class CacheException implements Exception {}

class FetchDataException extends ServerException {
  const FetchDataException([message])
      : super(errorMessage: 'Error During Communication');
}

class BadRequestException extends ServerException {
  const BadRequestException([message]) : super(errorMessage: 'Bad Request');
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([message]) : super(errorMessage: 'Unauthorized');
}

class NotFoundException extends ServerException {
  const NotFoundException([message])
      : super(errorMessage: 'Requested Info Not Found');
}

class ConflictException extends ServerException {
  const ConflictException([message]) : super(errorMessage: 'Conflict Occurred');
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException([message])
      : super(errorMessage: 'Internel Server Error');
}

class IncorrectCertificateException extends ServerException {
  const IncorrectCertificateException([message])
      : super(errorMessage: 'Incorrect Certificate');
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException([message])
      : super(errorMessage: 'No Internet Connection');
}
