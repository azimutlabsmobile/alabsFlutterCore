import 'package:alabs_flutter_core/core/data/models/result.dart';

abstract class LaunchUseCase<T> {
  Future<Result<T>> call();
}

abstract class LaunchParamsUseCase<Params, T> {
  Future<Result<T>> call(Params params);
}
