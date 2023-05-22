import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMsg;

  const Failure(this.errorMsg);

  @override
  List<Object?> get props => [errorMsg];
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMsg);
}

class CacheFailure extends Failure {
  const CacheFailure(super.errorMsg);
}
