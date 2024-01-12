import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';

class BaseState<T> {
  final T? result;
  final Failure? error;
  final ErrorType errorType;
  final StateStatus status;
  final bool showLoader;
  final dynamic value;

  const BaseState._({
    this.result,
    this.error,
    this.errorType = ErrorType.base,
    this.status = StateStatus.initial,
    this.showLoader = false,
    this.value,
  });

  BaseState.initial() : this._(status: StateStatus.initial);

  BaseState.loading([bool showLoader = false])
      : this._(
          status: StateStatus.loading,
          showLoader: showLoader,
        );

  BaseState.error(Failure failure, [ErrorType errorType = ErrorType.base])
      : this._(
          status: StateStatus.error,
          error: failure,
          errorType: errorType,
        );

  BaseState.loaded(T result)
      : this._(
          status: StateStatus.loaded,
          result: result,
        );

  BaseState.success([dynamic value])
      : this._(
          status: StateStatus.success,
          value: value,
        );

  bool isLoaded() => status == StateStatus.loaded;

  bool isSuccess() => status == StateStatus.success;

  bool isError() => status == StateStatus.error;

  bool isLoading() => status == StateStatus.loading;
}

enum StateStatus { initial, loading, error, loaded, success }

enum ErrorType { base, custom }
