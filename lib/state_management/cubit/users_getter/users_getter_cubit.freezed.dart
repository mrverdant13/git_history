// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users_getter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersGetterStateTearOff {
  const _$UsersGetterStateTearOff();

  _UsersGetterStateIdle idle() {
    return const _UsersGetterStateIdle();
  }

  _UsersGetterStateLoading loading() {
    return const _UsersGetterStateLoading();
  }

  _UsersGetterStateDone done({required KtSet<User> users}) {
    return _UsersGetterStateDone(
      users: users,
    );
  }

  _UsersGetterStateFailed failed(GetUsersFailure failure) {
    return _UsersGetterStateFailed(
      failure,
    );
  }
}

/// @nodoc
const $UsersGetterState = _$UsersGetterStateTearOff();

/// @nodoc
mixin _$UsersGetterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<User> users) done,
    required TResult Function(GetUsersFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<User> users)? done,
    TResult Function(GetUsersFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersGetterStateIdle value) idle,
    required TResult Function(_UsersGetterStateLoading value) loading,
    required TResult Function(_UsersGetterStateDone value) done,
    required TResult Function(_UsersGetterStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersGetterStateIdle value)? idle,
    TResult Function(_UsersGetterStateLoading value)? loading,
    TResult Function(_UsersGetterStateDone value)? done,
    TResult Function(_UsersGetterStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersGetterStateCopyWith<$Res> {
  factory $UsersGetterStateCopyWith(
          UsersGetterState value, $Res Function(UsersGetterState) then) =
      _$UsersGetterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersGetterStateCopyWithImpl<$Res>
    implements $UsersGetterStateCopyWith<$Res> {
  _$UsersGetterStateCopyWithImpl(this._value, this._then);

  final UsersGetterState _value;
  // ignore: unused_field
  final $Res Function(UsersGetterState) _then;
}

/// @nodoc
abstract class _$UsersGetterStateIdleCopyWith<$Res> {
  factory _$UsersGetterStateIdleCopyWith(_UsersGetterStateIdle value,
          $Res Function(_UsersGetterStateIdle) then) =
      __$UsersGetterStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersGetterStateIdleCopyWithImpl<$Res>
    extends _$UsersGetterStateCopyWithImpl<$Res>
    implements _$UsersGetterStateIdleCopyWith<$Res> {
  __$UsersGetterStateIdleCopyWithImpl(
      _UsersGetterStateIdle _value, $Res Function(_UsersGetterStateIdle) _then)
      : super(_value, (v) => _then(v as _UsersGetterStateIdle));

  @override
  _UsersGetterStateIdle get _value => super._value as _UsersGetterStateIdle;
}

/// @nodoc

class _$_UsersGetterStateIdle implements _UsersGetterStateIdle {
  const _$_UsersGetterStateIdle();

  @override
  String toString() {
    return 'UsersGetterState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsersGetterStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<User> users) done,
    required TResult Function(GetUsersFailure failure) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<User> users)? done,
    TResult Function(GetUsersFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersGetterStateIdle value) idle,
    required TResult Function(_UsersGetterStateLoading value) loading,
    required TResult Function(_UsersGetterStateDone value) done,
    required TResult Function(_UsersGetterStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersGetterStateIdle value)? idle,
    TResult Function(_UsersGetterStateLoading value)? loading,
    TResult Function(_UsersGetterStateDone value)? done,
    TResult Function(_UsersGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _UsersGetterStateIdle implements UsersGetterState {
  const factory _UsersGetterStateIdle() = _$_UsersGetterStateIdle;
}

/// @nodoc
abstract class _$UsersGetterStateLoadingCopyWith<$Res> {
  factory _$UsersGetterStateLoadingCopyWith(_UsersGetterStateLoading value,
          $Res Function(_UsersGetterStateLoading) then) =
      __$UsersGetterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersGetterStateLoadingCopyWithImpl<$Res>
    extends _$UsersGetterStateCopyWithImpl<$Res>
    implements _$UsersGetterStateLoadingCopyWith<$Res> {
  __$UsersGetterStateLoadingCopyWithImpl(_UsersGetterStateLoading _value,
      $Res Function(_UsersGetterStateLoading) _then)
      : super(_value, (v) => _then(v as _UsersGetterStateLoading));

  @override
  _UsersGetterStateLoading get _value =>
      super._value as _UsersGetterStateLoading;
}

/// @nodoc

class _$_UsersGetterStateLoading implements _UsersGetterStateLoading {
  const _$_UsersGetterStateLoading();

  @override
  String toString() {
    return 'UsersGetterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsersGetterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<User> users) done,
    required TResult Function(GetUsersFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<User> users)? done,
    TResult Function(GetUsersFailure failure)? failed,
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
    required TResult Function(_UsersGetterStateIdle value) idle,
    required TResult Function(_UsersGetterStateLoading value) loading,
    required TResult Function(_UsersGetterStateDone value) done,
    required TResult Function(_UsersGetterStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersGetterStateIdle value)? idle,
    TResult Function(_UsersGetterStateLoading value)? loading,
    TResult Function(_UsersGetterStateDone value)? done,
    TResult Function(_UsersGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UsersGetterStateLoading implements UsersGetterState {
  const factory _UsersGetterStateLoading() = _$_UsersGetterStateLoading;
}

/// @nodoc
abstract class _$UsersGetterStateDoneCopyWith<$Res> {
  factory _$UsersGetterStateDoneCopyWith(_UsersGetterStateDone value,
          $Res Function(_UsersGetterStateDone) then) =
      __$UsersGetterStateDoneCopyWithImpl<$Res>;
  $Res call({KtSet<User> users});
}

/// @nodoc
class __$UsersGetterStateDoneCopyWithImpl<$Res>
    extends _$UsersGetterStateCopyWithImpl<$Res>
    implements _$UsersGetterStateDoneCopyWith<$Res> {
  __$UsersGetterStateDoneCopyWithImpl(
      _UsersGetterStateDone _value, $Res Function(_UsersGetterStateDone) _then)
      : super(_value, (v) => _then(v as _UsersGetterStateDone));

  @override
  _UsersGetterStateDone get _value => super._value as _UsersGetterStateDone;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_UsersGetterStateDone(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtSet<User>,
    ));
  }
}

/// @nodoc

class _$_UsersGetterStateDone implements _UsersGetterStateDone {
  const _$_UsersGetterStateDone({required this.users});

  @override
  final KtSet<User> users;

  @override
  String toString() {
    return 'UsersGetterState.done(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersGetterStateDone &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$UsersGetterStateDoneCopyWith<_UsersGetterStateDone> get copyWith =>
      __$UsersGetterStateDoneCopyWithImpl<_UsersGetterStateDone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<User> users) done,
    required TResult Function(GetUsersFailure failure) failed,
  }) {
    return done(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<User> users)? done,
    TResult Function(GetUsersFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersGetterStateIdle value) idle,
    required TResult Function(_UsersGetterStateLoading value) loading,
    required TResult Function(_UsersGetterStateDone value) done,
    required TResult Function(_UsersGetterStateFailed value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersGetterStateIdle value)? idle,
    TResult Function(_UsersGetterStateLoading value)? loading,
    TResult Function(_UsersGetterStateDone value)? done,
    TResult Function(_UsersGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _UsersGetterStateDone implements UsersGetterState {
  const factory _UsersGetterStateDone({required KtSet<User> users}) =
      _$_UsersGetterStateDone;

  KtSet<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersGetterStateDoneCopyWith<_UsersGetterStateDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsersGetterStateFailedCopyWith<$Res> {
  factory _$UsersGetterStateFailedCopyWith(_UsersGetterStateFailed value,
          $Res Function(_UsersGetterStateFailed) then) =
      __$UsersGetterStateFailedCopyWithImpl<$Res>;
  $Res call({GetUsersFailure failure});

  $GetUsersFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UsersGetterStateFailedCopyWithImpl<$Res>
    extends _$UsersGetterStateCopyWithImpl<$Res>
    implements _$UsersGetterStateFailedCopyWith<$Res> {
  __$UsersGetterStateFailedCopyWithImpl(_UsersGetterStateFailed _value,
      $Res Function(_UsersGetterStateFailed) _then)
      : super(_value, (v) => _then(v as _UsersGetterStateFailed));

  @override
  _UsersGetterStateFailed get _value => super._value as _UsersGetterStateFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UsersGetterStateFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetUsersFailure,
    ));
  }

  @override
  $GetUsersFailureCopyWith<$Res> get failure {
    return $GetUsersFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UsersGetterStateFailed implements _UsersGetterStateFailed {
  const _$_UsersGetterStateFailed(this.failure);

  @override
  final GetUsersFailure failure;

  @override
  String toString() {
    return 'UsersGetterState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersGetterStateFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UsersGetterStateFailedCopyWith<_UsersGetterStateFailed> get copyWith =>
      __$UsersGetterStateFailedCopyWithImpl<_UsersGetterStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<User> users) done,
    required TResult Function(GetUsersFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<User> users)? done,
    TResult Function(GetUsersFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersGetterStateIdle value) idle,
    required TResult Function(_UsersGetterStateLoading value) loading,
    required TResult Function(_UsersGetterStateDone value) done,
    required TResult Function(_UsersGetterStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersGetterStateIdle value)? idle,
    TResult Function(_UsersGetterStateLoading value)? loading,
    TResult Function(_UsersGetterStateDone value)? done,
    TResult Function(_UsersGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _UsersGetterStateFailed implements UsersGetterState {
  const factory _UsersGetterStateFailed(GetUsersFailure failure) =
      _$_UsersGetterStateFailed;

  GetUsersFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersGetterStateFailedCopyWith<_UsersGetterStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
