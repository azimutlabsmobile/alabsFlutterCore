import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';

sealed class ResultApi<T> {}

class ResultSuccess<T> extends ResultApi<T> {
  final T? data;

  ResultSuccess(this.data);
}

class ResultError<T> extends ResultApi<T> {
  List<Failure>? errors;

  ResultError(this.errors);
}

extension ResultApiExt<T> on ResultApi<T> {
  T? get data => switch (this) {
        ResultSuccess(data: final data) => data,
        ResultError() => null,
      };

  List<Failure>? get failures => switch (this) {
        ResultSuccess() => null,
        ResultError(failures: final failures) => failures,
      };

  Failure? get failure => switch (this) {
        ResultSuccess() => null,
        ResultError(failures: final failures) => failures?.first,
      };
}
