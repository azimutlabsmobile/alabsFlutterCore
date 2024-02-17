import 'dart:async';

import 'package:alabs_flutter_core/core/data/models/result_api.dart';
import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:alabs_flutter_core/core/ui/bloc/state/base_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T> extends Cubit<BaseState<T>> {
  BaseCubit({BaseState<T>? initialState})
      : super(initialState ?? BaseState.initial());

  var _isInternetErrorDisplayed = false;
  Timer? _timer;

  launch<R>(
    Future<ResultApi<R>> call, {
    required Function(R) onResult,
    Function(Failure)? onError,
    bool showError = true,
    bool showLoading = true,
    ErrorType errorType = ErrorType.base,
  }) async {
    final hasNoInternetConnection = await _hasNoInternetConnection();

    if (hasNoInternetConnection) {
      if (!_isInternetErrorDisplayed) {
        _isInternetErrorDisplayed = true;
        emit(BaseState.error(NoConnectionFailure()));
      }

      _timer = Timer(const Duration(seconds: 3), () {
        _isInternetErrorDisplayed = false;
        _timer?.cancel();
      });

      return;
    }

    if (showLoading) {
      emit(BaseState.loading(true));
    }

    final response = await call;

    if (showLoading) {
      emit(BaseState.loading(false));
    }

    if (response.failures != null && response.failures?.isNotEmpty == true) {
      if (showError) {
        emit(BaseState.error(response.failure!, errorType));
      }

      if (onError != null) {
        onError(response.failure!);
      }
    }

    if (response.data != null) {
      onResult(response.data as R);
    }
  }

  Future<bool> _hasNoInternetConnection() async {
    final connectivity = await Connectivity().checkConnectivity();

    return connectivity == ConnectivityResult.none;
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
