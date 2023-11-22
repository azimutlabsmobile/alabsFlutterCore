import 'package:alabs_flutter_core/core/data/models/result_api.dart';

abstract class UseCase {
  ResultApi<T> launchMap<T>(ResultApi? result, T map) {
    return ResultApi(errors: result?.errors, data: map);
  }
}

abstract class LaunchUseCase<T> extends UseCase {
  Future<ResultApi<T>> call();
}

abstract class LaunchUseCaseWithParam<Param, T> extends UseCase {
  Future<ResultApi<T>> call(Param param);
}
