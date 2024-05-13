// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateStatusCopyWith<$Res> {
  factory $StateStatusCopyWith(
          StateStatus value, $Res Function(StateStatus) then) =
      _$StateStatusCopyWithImpl<$Res, StateStatus>;
}

/// @nodoc
class _$StateStatusCopyWithImpl<$Res, $Val extends StateStatus>
    implements $StateStatusCopyWith<$Res> {
  _$StateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateStatusInitialImplCopyWith<$Res> {
  factory _$$StateStatusInitialImplCopyWith(_$StateStatusInitialImpl value,
          $Res Function(_$StateStatusInitialImpl) then) =
      __$$StateStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusInitialImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusInitialImpl>
    implements _$$StateStatusInitialImplCopyWith<$Res> {
  __$$StateStatusInitialImplCopyWithImpl(_$StateStatusInitialImpl _value,
      $Res Function(_$StateStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateStatusInitialImpl implements StateStatusInitial {
  const _$StateStatusInitialImpl();

  @override
  String toString() {
    return 'StateStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateStatusInitial implements StateStatus {
  const factory StateStatusInitial() = _$StateStatusInitialImpl;
}

/// @nodoc
abstract class _$$StateStatusLoadingImplCopyWith<$Res> {
  factory _$$StateStatusLoadingImplCopyWith(_$StateStatusLoadingImpl value,
          $Res Function(_$StateStatusLoadingImpl) then) =
      __$$StateStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusLoadingImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusLoadingImpl>
    implements _$$StateStatusLoadingImplCopyWith<$Res> {
  __$$StateStatusLoadingImplCopyWithImpl(_$StateStatusLoadingImpl _value,
      $Res Function(_$StateStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateStatusLoadingImpl implements StateStatusLoading {
  const _$StateStatusLoadingImpl();

  @override
  String toString() {
    return 'StateStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateStatusLoading implements StateStatus {
  const factory StateStatusLoading() = _$StateStatusLoadingImpl;
}

/// @nodoc
abstract class _$$StateStatusResultImplCopyWith<$Res> {
  factory _$$StateStatusResultImplCopyWith(_$StateStatusResultImpl value,
          $Res Function(_$StateStatusResultImpl) then) =
      __$$StateStatusResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusResultImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusResultImpl>
    implements _$$StateStatusResultImplCopyWith<$Res> {
  __$$StateStatusResultImplCopyWithImpl(_$StateStatusResultImpl _value,
      $Res Function(_$StateStatusResultImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateStatusResultImpl implements StateStatusResult {
  const _$StateStatusResultImpl();

  @override
  String toString() {
    return 'StateStatus.result()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusResultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return result();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return result?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class StateStatusResult implements StateStatus {
  const factory StateStatusResult() = _$StateStatusResultImpl;
}

/// @nodoc
abstract class _$$StateStatusSuccessImplCopyWith<$Res> {
  factory _$$StateStatusSuccessImplCopyWith(_$StateStatusSuccessImpl value,
          $Res Function(_$StateStatusSuccessImpl) then) =
      __$$StateStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusSuccessImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusSuccessImpl>
    implements _$$StateStatusSuccessImplCopyWith<$Res> {
  __$$StateStatusSuccessImplCopyWithImpl(_$StateStatusSuccessImpl _value,
      $Res Function(_$StateStatusSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateStatusSuccessImpl implements StateStatusSuccess {
  const _$StateStatusSuccessImpl();

  @override
  String toString() {
    return 'StateStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StateStatusSuccess implements StateStatus {
  const factory StateStatusSuccess() = _$StateStatusSuccessImpl;
}

/// @nodoc
abstract class _$$StateStatusFailureImplCopyWith<$Res> {
  factory _$$StateStatusFailureImplCopyWith(_$StateStatusFailureImpl value,
          $Res Function(_$StateStatusFailureImpl) then) =
      __$$StateStatusFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateStatusFailureImplCopyWithImpl<$Res>
    extends _$StateStatusCopyWithImpl<$Res, _$StateStatusFailureImpl>
    implements _$$StateStatusFailureImplCopyWith<$Res> {
  __$$StateStatusFailureImplCopyWithImpl(_$StateStatusFailureImpl _value,
      $Res Function(_$StateStatusFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateStatusFailureImpl implements StateStatusFailure {
  const _$StateStatusFailureImpl();

  @override
  String toString() {
    return 'StateStatus.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateStatusFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() result,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? result,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? result,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateStatusInitial value) initial,
    required TResult Function(StateStatusLoading value) loading,
    required TResult Function(StateStatusResult value) result,
    required TResult Function(StateStatusSuccess value) success,
    required TResult Function(StateStatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateStatusInitial value)? initial,
    TResult? Function(StateStatusLoading value)? loading,
    TResult? Function(StateStatusResult value)? result,
    TResult? Function(StateStatusSuccess value)? success,
    TResult? Function(StateStatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateStatusInitial value)? initial,
    TResult Function(StateStatusLoading value)? loading,
    TResult Function(StateStatusResult value)? result,
    TResult Function(StateStatusSuccess value)? success,
    TResult Function(StateStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StateStatusFailure implements StateStatus {
  const factory StateStatusFailure() = _$StateStatusFailureImpl;
}
