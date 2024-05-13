import 'dart:async';

import 'package:alabs_flutter_core/core/data/models/result.dart';
import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:alabs_flutter_core/core/presentation/bloc/state/base_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, BaseState<State>> {
  BaseBloc({BaseState<State>? initialState})
      : super(initialState ?? BaseState.initial());

  var _isInternetErrorDisplayed = false;
  Timer? _timer;

  execute<Value>(
    Emitter<BaseState<State>> emit,
    Future<Result<Value>> call, {
    required Function(Value) onResult,
    Function(Failure)? onError,
    bool showError = true,
    bool showLoading = true,
    ErrorType errorType = ErrorType.base,
  }) async {
    final hasNoInternetConnection = await _hasNoInternetConnection();

    if (hasNoInternetConnection) {
      _showNoInternetConnectionError(emit);

      return;
    }

    if (showLoading) {
      emit(BaseState.loading(true));
    }

    final response = await call;

    if (showLoading) {
      emit(BaseState.loading(false));
    }

    if (response.failure != null && response.failures?.isNotEmpty == true) {
      if (showError) {
        emit(BaseState.failure(response.failure!, errorType));
      }

      if (onError != null) {
        onError(response.failure!);
      }
    }

    if (response.data != null) {
      onResult(response.data as Value);
    }
  }

  _showNoInternetConnectionError(Emitter<BaseState<State>> emit) {
    if (!_isInternetErrorDisplayed) {
      _isInternetErrorDisplayed = true;
      emit(BaseState.failure(NoConnectionFailure()));
    }

    _timer = Timer(const Duration(seconds: 3), () {
      _isInternetErrorDisplayed = false;
      _timer?.cancel();
    });
  }

  Future<bool> _hasNoInternetConnection() async {
    final connectivity = await Connectivity().checkConnectivity();

    return connectivity == ConnectivityResult.none;
  }
}
