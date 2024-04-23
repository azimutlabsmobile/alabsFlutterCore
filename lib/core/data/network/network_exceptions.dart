import 'package:alabs_flutter_core/core.dart';
import 'package:dio/dio.dart';

abstract interface class Failure {
  int get code;

  String get title => "Ошибка";

  String get message;
}

class ServerFailure extends Failure {
  Response? response;

  ServerFailure({this.response});

  @override
  int get code => 500;

  @override
  String get message => "Ошибка сервера";
}

class DioFailure extends Failure {
  Response? response;

  DioFailure({this.response});

  @override
  int get code => response?.statusCode ?? -1;

  @override
  String get message => response?.data?['message'] ?? CoreConstants.empty;
}

class UnauthorizedFailure extends Failure {
  UnauthorizedFailure({required this.message});

  @override
  int get code => 401;

  @override
  final String message;
}

class NotFoundFailure extends Failure {
  NotFoundFailure({required this.message});

  @override
  int get code => 404;

  @override
  final String message;
}

class NoConnectionFailure extends Failure {
  @override
  int get code => -1;

  @override
  String get message => "Нет интернет соединения";
}

class CustomFailure implements Failure {
  @override
  String title;

  @override
  String message;

  @override
  int code;

  CustomFailure({
    this.title = CoreConstants.empty,
    this.message = CoreConstants.empty,
    this.code = -1,
  });
}

class ServerException implements Exception {
  Response? response;

  ServerException({this.response});
}
