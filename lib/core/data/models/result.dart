import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';

class Result<T> {
  Result({
    this.data,
    this.failures,
  });

  T? data;
  List<Failure>? failures;
}

extension ResultExt<T> on Result<T> {
  Failure? get failure => failures?.first;
}
