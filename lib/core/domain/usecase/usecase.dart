import 'package:alabs_flutter_core/core/data/models/result_api.dart';

abstract class BaseUseCase {
  ResultApi<T> launchMap<T>(ResultApi? result, {required T data}) {
    if (result?.failures != null) {
      return ResultError(result?.failures);
    }

    return ResultSuccess(data);
  }
}

abstract class LaunchUseCase<T> extends BaseUseCase {
  Future<ResultApi<T>> call();
}

abstract class LaunchUseCaseWithParam<Param, T> extends BaseUseCase {
  Future<ResultApi<T>> call(Param param);
}
