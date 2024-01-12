import 'package:alabs_flutter_core/core/data/models/result_api.dart';
import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:alabs_flutter_core/core/ui/bloc/state/base_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseCubit<T> extends Cubit<BaseState<T>> {
  BaseCubit({BaseState<T>? initialState})
      : super(initialState ?? BaseState.initial());

  launch<R>(
    Future<ResultApi<R>> call, {
    required Function(R) onResult,
    Function(Failure)? onError,
    bool showError = true,
    bool showLoading = true,
    ErrorType errorType = ErrorType.base,
  }) async {
    _checkConnectivity();

    if (showLoading) {
      emit(BaseState.loading(true));
    }

    final response = await call;

    if (showLoading) {
      emit(BaseState.loading(false));
    }

    if (response.errors != null && response.errors?.isNotEmpty == true) {
      if (showError) {
        emit(BaseState.error(response.errors!.first, errorType));
      }

      if (onError != null) {
        onError(response.errors!.first);
      }
    }

    if (response.data != null) {
      onResult(response.data as R);
    }
  }

  _checkConnectivity() async {
    final connectivity = await Connectivity().checkConnectivity();

    if (connectivity == ConnectivityResult.none) {
      return emit(BaseState.error(NoConnectionFailure()));
    }
  }

  emitResult(T result) {
    emit(BaseState.loaded(result));
  }

  emitError(Failure failure) {
    emit(BaseState.error(failure));
  }

  emitSuccess([dynamic value]) {
    emit(BaseState.success(value));
  }

  emitLoading([bool showLoader = false]) {
    emit(BaseState.loading(showLoader));
  }
}
