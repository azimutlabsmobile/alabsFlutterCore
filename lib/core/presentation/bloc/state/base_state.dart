import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

class BaseState<T> {
  final T? result;
  final Failure? failure;
  final ErrorType errorType;
  StateStatus? status = const StateStatusInitial();
  final bool showLoader;
  dynamic value;

  BaseState({
    this.result,
    this.failure,
    this.errorType = ErrorType.base,
    this.status,
    this.showLoader = false,
    this.value,
  });

  factory BaseState.initial() => BaseState(status: const StateStatusInitial());

  factory BaseState.loading([bool showLoader = false]) => BaseState(
    status: const StateStatusLoading(),
    showLoader: showLoader,
  );

  factory BaseState.failure(
      Failure failure, [
        ErrorType errorType = ErrorType.base,
      ]) =>
      BaseState(
        status: const StateStatusFailure(),
        failure: failure,
        errorType: errorType,
      );

  factory BaseState.result(T result) => BaseState(
    status: const StateStatusResult(),
    result: result,
  );

  factory BaseState.success([dynamic value]) => BaseState(
    status: const StateStatusSuccess(),
    value: value,
  );
}

@freezed
sealed class StateStatus {
  const factory StateStatus.initial() = StateStatusInitial;

  const factory StateStatus.loading() = StateStatusLoading;

  const factory StateStatus.result() = StateStatusResult;

  const factory StateStatus.success() = StateStatusSuccess;

  const factory StateStatus.failure() = StateStatusFailure;
}

enum ErrorType { base, custom }