import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState {
  const factory BaseState({
    @Default(null) T? result,
    @Default(null) Failure? failure,
    @Default(ErrorType.base) ErrorType errorType,
    @Default(StateStatusInitial()) StateStatus status,
    @Default(false) bool showLoader,
    dynamic value,
  }) = _BaseState;

  factory BaseState.initial() => const BaseState(status: StateStatusInitial());

  factory BaseState.loading([bool showLoader = false]) => BaseState(
        status: const StateStatusLoading(),
        showLoader: showLoader,
      );

  factory BaseState.error(
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
