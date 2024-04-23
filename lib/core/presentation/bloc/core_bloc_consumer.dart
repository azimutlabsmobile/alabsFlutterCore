import 'package:alabs_flutter_core/core/presentation/bloc/state/base_state.dart';
import 'package:alabs_flutter_core/core/presentation/widgets/snackbar_error_popup.dart';
import 'package:alabs_flutter_core/core/utils/load_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoreBlocConsumer<B extends StateStreamable<S>, S extends BaseState>
    extends BlocConsumer<B, S> {
  CoreBlocConsumer({
    super.key,
    bool showError = true,
    bool showLoader = false,
    super.buildWhen,
    Function(BuildContext, S)? listener,
    Widget? Function(BuildContext, S)? builder,
  }) : super(
          listener: (context, state) {
            listener?.call(context, state);

            if (showError &&
                state.status is StateStatusFailure &&
                state.errorType == ErrorType.base) {
              showSnackBarError(context, state.failure);
            }

            if (showLoader && state.status is StateStatusLoading) {
              LoaderUtils(context).showLoader(state.showLoader);
            }
          },
          builder: (context, state) {
            if (builder != null) {
              return builder(context, state) ?? const SizedBox.shrink();
            }

            return const SizedBox.shrink();
          },
        );
}
