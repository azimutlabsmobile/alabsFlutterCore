import 'package:alabs_flutter_core/core/presentation//bloc/state/base_state.dart';
import 'package:alabs_flutter_core/core/presentation/widgets/snackbar_error_popup.dart';
import 'package:alabs_flutter_core/core/utils/load_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoreBlocListener<B extends StateStreamable<S>, S extends BaseState>
    extends BlocListener<B, S> {
  CoreBlocListener({
    super.key,
    bool showLoader = false,
    bool showError = true,
    Function(BuildContext, S)? listener,
    super.child,
  }) : super(
          listener: (context, state) {
            listener?.call(context, state);

            if (showLoader && state.status is StateStatusLoading) {
              LoaderUtils(context).showLoader(state.showLoader);
            }

            if (showError &&
                state.status is StateStatusFailure &&
                state.errorType == ErrorType.base) {
              showSnackBarError(context, state.failure);
            }
          },
        );
}
