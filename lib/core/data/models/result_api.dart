import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';

class ResultApi<T> {
  ResultApi({
    this.data,
    this.errors,
  });

  T? data;
  List<Failure>? errors;
}

extension ResultApiExt<T> on ResultApi<T> {
  Failure? get error => errors?.first;
}
