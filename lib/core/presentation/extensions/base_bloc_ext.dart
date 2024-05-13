import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:alabs_flutter_core/core/presentation/bloc/state/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BaseBlocExt<State> on Emitter<BaseState<State>> {
  emitResult(State result) {
    this(BaseState.result(result));
  }

  emitError(Failure failure) {
    this(BaseState.failure(failure));
  }

  emitSuccess([dynamic value]) {
    this(BaseState.success(value));
  }

  emitLoading([bool showLoader = false]) {
    this(BaseState.loading(showLoader));
  }
}
