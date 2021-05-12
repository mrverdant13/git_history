// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'interface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetCommitsExceptionTearOff {
  const _$GetCommitsExceptionTearOff();

  _GetCommitsExceptionOffline offline() {
    return const _GetCommitsExceptionOffline();
  }
}

/// @nodoc
const $GetCommitsException = _$GetCommitsExceptionTearOff();

/// @nodoc
mixin _$GetCommitsException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommitsExceptionOffline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommitsExceptionOffline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommitsExceptionCopyWith<$Res> {
  factory $GetCommitsExceptionCopyWith(
          GetCommitsException value, $Res Function(GetCommitsException) then) =
      _$GetCommitsExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCommitsExceptionCopyWithImpl<$Res>
    implements $GetCommitsExceptionCopyWith<$Res> {
  _$GetCommitsExceptionCopyWithImpl(this._value, this._then);

  final GetCommitsException _value;
  // ignore: unused_field
  final $Res Function(GetCommitsException) _then;
}

/// @nodoc
abstract class _$GetCommitsExceptionOfflineCopyWith<$Res> {
  factory _$GetCommitsExceptionOfflineCopyWith(
          _GetCommitsExceptionOffline value,
          $Res Function(_GetCommitsExceptionOffline) then) =
      __$GetCommitsExceptionOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCommitsExceptionOfflineCopyWithImpl<$Res>
    extends _$GetCommitsExceptionCopyWithImpl<$Res>
    implements _$GetCommitsExceptionOfflineCopyWith<$Res> {
  __$GetCommitsExceptionOfflineCopyWithImpl(_GetCommitsExceptionOffline _value,
      $Res Function(_GetCommitsExceptionOffline) _then)
      : super(_value, (v) => _then(v as _GetCommitsExceptionOffline));

  @override
  _GetCommitsExceptionOffline get _value =>
      super._value as _GetCommitsExceptionOffline;
}

/// @nodoc

class _$_GetCommitsExceptionOffline implements _GetCommitsExceptionOffline {
  const _$_GetCommitsExceptionOffline();

  @override
  String toString() {
    return 'GetCommitsException.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCommitsExceptionOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommitsExceptionOffline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommitsExceptionOffline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _GetCommitsExceptionOffline implements GetCommitsException {
  const factory _GetCommitsExceptionOffline() = _$_GetCommitsExceptionOffline;
}
