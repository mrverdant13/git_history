// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'repositories_getter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoriesGetterStateTearOff {
  const _$RepositoriesGetterStateTearOff();

  _RepositoriesGetterStateIdle idle() {
    return const _RepositoriesGetterStateIdle();
  }

  _RepositoriesGetterStateLoading loading() {
    return const _RepositoriesGetterStateLoading();
  }

  _RepositoriesGetterStateDone done({required KtSet<Repository> repositories}) {
    return _RepositoriesGetterStateDone(
      repositories: repositories,
    );
  }

  _RepositoriesGetterStateFailed failed(GetRepositoriesFailure failure) {
    return _RepositoriesGetterStateFailed(
      failure,
    );
  }
}

/// @nodoc
const $RepositoriesGetterState = _$RepositoriesGetterStateTearOff();

/// @nodoc
mixin _$RepositoriesGetterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<Repository> repositories) done,
    required TResult Function(GetRepositoriesFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<Repository> repositories)? done,
    TResult Function(GetRepositoriesFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RepositoriesGetterStateIdle value) idle,
    required TResult Function(_RepositoriesGetterStateLoading value) loading,
    required TResult Function(_RepositoriesGetterStateDone value) done,
    required TResult Function(_RepositoriesGetterStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RepositoriesGetterStateIdle value)? idle,
    TResult Function(_RepositoriesGetterStateLoading value)? loading,
    TResult Function(_RepositoriesGetterStateDone value)? done,
    TResult Function(_RepositoriesGetterStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesGetterStateCopyWith<$Res> {
  factory $RepositoriesGetterStateCopyWith(RepositoriesGetterState value,
          $Res Function(RepositoriesGetterState) then) =
      _$RepositoriesGetterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoriesGetterStateCopyWithImpl<$Res>
    implements $RepositoriesGetterStateCopyWith<$Res> {
  _$RepositoriesGetterStateCopyWithImpl(this._value, this._then);

  final RepositoriesGetterState _value;
  // ignore: unused_field
  final $Res Function(RepositoriesGetterState) _then;
}

/// @nodoc
abstract class _$RepositoriesGetterStateIdleCopyWith<$Res> {
  factory _$RepositoriesGetterStateIdleCopyWith(
          _RepositoriesGetterStateIdle value,
          $Res Function(_RepositoriesGetterStateIdle) then) =
      __$RepositoriesGetterStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$RepositoriesGetterStateIdleCopyWithImpl<$Res>
    extends _$RepositoriesGetterStateCopyWithImpl<$Res>
    implements _$RepositoriesGetterStateIdleCopyWith<$Res> {
  __$RepositoriesGetterStateIdleCopyWithImpl(
      _RepositoriesGetterStateIdle _value,
      $Res Function(_RepositoriesGetterStateIdle) _then)
      : super(_value, (v) => _then(v as _RepositoriesGetterStateIdle));

  @override
  _RepositoriesGetterStateIdle get _value =>
      super._value as _RepositoriesGetterStateIdle;
}

/// @nodoc

class _$_RepositoriesGetterStateIdle implements _RepositoriesGetterStateIdle {
  const _$_RepositoriesGetterStateIdle();

  @override
  String toString() {
    return 'RepositoriesGetterState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RepositoriesGetterStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<Repository> repositories) done,
    required TResult Function(GetRepositoriesFailure failure) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<Repository> repositories)? done,
    TResult Function(GetRepositoriesFailure failure)? failed,
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
    required TResult Function(_RepositoriesGetterStateIdle value) idle,
    required TResult Function(_RepositoriesGetterStateLoading value) loading,
    required TResult Function(_RepositoriesGetterStateDone value) done,
    required TResult Function(_RepositoriesGetterStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RepositoriesGetterStateIdle value)? idle,
    TResult Function(_RepositoriesGetterStateLoading value)? loading,
    TResult Function(_RepositoriesGetterStateDone value)? done,
    TResult Function(_RepositoriesGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _RepositoriesGetterStateIdle implements RepositoriesGetterState {
  const factory _RepositoriesGetterStateIdle() = _$_RepositoriesGetterStateIdle;
}

/// @nodoc
abstract class _$RepositoriesGetterStateLoadingCopyWith<$Res> {
  factory _$RepositoriesGetterStateLoadingCopyWith(
          _RepositoriesGetterStateLoading value,
          $Res Function(_RepositoriesGetterStateLoading) then) =
      __$RepositoriesGetterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$RepositoriesGetterStateLoadingCopyWithImpl<$Res>
    extends _$RepositoriesGetterStateCopyWithImpl<$Res>
    implements _$RepositoriesGetterStateLoadingCopyWith<$Res> {
  __$RepositoriesGetterStateLoadingCopyWithImpl(
      _RepositoriesGetterStateLoading _value,
      $Res Function(_RepositoriesGetterStateLoading) _then)
      : super(_value, (v) => _then(v as _RepositoriesGetterStateLoading));

  @override
  _RepositoriesGetterStateLoading get _value =>
      super._value as _RepositoriesGetterStateLoading;
}

/// @nodoc

class _$_RepositoriesGetterStateLoading
    implements _RepositoriesGetterStateLoading {
  const _$_RepositoriesGetterStateLoading();

  @override
  String toString() {
    return 'RepositoriesGetterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RepositoriesGetterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<Repository> repositories) done,
    required TResult Function(GetRepositoriesFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<Repository> repositories)? done,
    TResult Function(GetRepositoriesFailure failure)? failed,
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
    required TResult Function(_RepositoriesGetterStateIdle value) idle,
    required TResult Function(_RepositoriesGetterStateLoading value) loading,
    required TResult Function(_RepositoriesGetterStateDone value) done,
    required TResult Function(_RepositoriesGetterStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RepositoriesGetterStateIdle value)? idle,
    TResult Function(_RepositoriesGetterStateLoading value)? loading,
    TResult Function(_RepositoriesGetterStateDone value)? done,
    TResult Function(_RepositoriesGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RepositoriesGetterStateLoading
    implements RepositoriesGetterState {
  const factory _RepositoriesGetterStateLoading() =
      _$_RepositoriesGetterStateLoading;
}

/// @nodoc
abstract class _$RepositoriesGetterStateDoneCopyWith<$Res> {
  factory _$RepositoriesGetterStateDoneCopyWith(
          _RepositoriesGetterStateDone value,
          $Res Function(_RepositoriesGetterStateDone) then) =
      __$RepositoriesGetterStateDoneCopyWithImpl<$Res>;
  $Res call({KtSet<Repository> repositories});
}

/// @nodoc
class __$RepositoriesGetterStateDoneCopyWithImpl<$Res>
    extends _$RepositoriesGetterStateCopyWithImpl<$Res>
    implements _$RepositoriesGetterStateDoneCopyWith<$Res> {
  __$RepositoriesGetterStateDoneCopyWithImpl(
      _RepositoriesGetterStateDone _value,
      $Res Function(_RepositoriesGetterStateDone) _then)
      : super(_value, (v) => _then(v as _RepositoriesGetterStateDone));

  @override
  _RepositoriesGetterStateDone get _value =>
      super._value as _RepositoriesGetterStateDone;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_RepositoriesGetterStateDone(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as KtSet<Repository>,
    ));
  }
}

/// @nodoc

class _$_RepositoriesGetterStateDone implements _RepositoriesGetterStateDone {
  const _$_RepositoriesGetterStateDone({required this.repositories});

  @override
  final KtSet<Repository> repositories;

  @override
  String toString() {
    return 'RepositoriesGetterState.done(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoriesGetterStateDone &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repositories);

  @JsonKey(ignore: true)
  @override
  _$RepositoriesGetterStateDoneCopyWith<_RepositoriesGetterStateDone>
      get copyWith => __$RepositoriesGetterStateDoneCopyWithImpl<
          _RepositoriesGetterStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<Repository> repositories) done,
    required TResult Function(GetRepositoriesFailure failure) failed,
  }) {
    return done(repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<Repository> repositories)? done,
    TResult Function(GetRepositoriesFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RepositoriesGetterStateIdle value) idle,
    required TResult Function(_RepositoriesGetterStateLoading value) loading,
    required TResult Function(_RepositoriesGetterStateDone value) done,
    required TResult Function(_RepositoriesGetterStateFailed value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RepositoriesGetterStateIdle value)? idle,
    TResult Function(_RepositoriesGetterStateLoading value)? loading,
    TResult Function(_RepositoriesGetterStateDone value)? done,
    TResult Function(_RepositoriesGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _RepositoriesGetterStateDone implements RepositoriesGetterState {
  const factory _RepositoriesGetterStateDone(
          {required KtSet<Repository> repositories}) =
      _$_RepositoriesGetterStateDone;

  KtSet<Repository> get repositories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RepositoriesGetterStateDoneCopyWith<_RepositoriesGetterStateDone>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RepositoriesGetterStateFailedCopyWith<$Res> {
  factory _$RepositoriesGetterStateFailedCopyWith(
          _RepositoriesGetterStateFailed value,
          $Res Function(_RepositoriesGetterStateFailed) then) =
      __$RepositoriesGetterStateFailedCopyWithImpl<$Res>;
  $Res call({GetRepositoriesFailure failure});

  $GetRepositoriesFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$RepositoriesGetterStateFailedCopyWithImpl<$Res>
    extends _$RepositoriesGetterStateCopyWithImpl<$Res>
    implements _$RepositoriesGetterStateFailedCopyWith<$Res> {
  __$RepositoriesGetterStateFailedCopyWithImpl(
      _RepositoriesGetterStateFailed _value,
      $Res Function(_RepositoriesGetterStateFailed) _then)
      : super(_value, (v) => _then(v as _RepositoriesGetterStateFailed));

  @override
  _RepositoriesGetterStateFailed get _value =>
      super._value as _RepositoriesGetterStateFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_RepositoriesGetterStateFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetRepositoriesFailure,
    ));
  }

  @override
  $GetRepositoriesFailureCopyWith<$Res> get failure {
    return $GetRepositoriesFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_RepositoriesGetterStateFailed
    implements _RepositoriesGetterStateFailed {
  const _$_RepositoriesGetterStateFailed(this.failure);

  @override
  final GetRepositoriesFailure failure;

  @override
  String toString() {
    return 'RepositoriesGetterState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoriesGetterStateFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$RepositoriesGetterStateFailedCopyWith<_RepositoriesGetterStateFailed>
      get copyWith => __$RepositoriesGetterStateFailedCopyWithImpl<
          _RepositoriesGetterStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(KtSet<Repository> repositories) done,
    required TResult Function(GetRepositoriesFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(KtSet<Repository> repositories)? done,
    TResult Function(GetRepositoriesFailure failure)? failed,
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
    required TResult Function(_RepositoriesGetterStateIdle value) idle,
    required TResult Function(_RepositoriesGetterStateLoading value) loading,
    required TResult Function(_RepositoriesGetterStateDone value) done,
    required TResult Function(_RepositoriesGetterStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RepositoriesGetterStateIdle value)? idle,
    TResult Function(_RepositoriesGetterStateLoading value)? loading,
    TResult Function(_RepositoriesGetterStateDone value)? done,
    TResult Function(_RepositoriesGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _RepositoriesGetterStateFailed
    implements RepositoriesGetterState {
  const factory _RepositoriesGetterStateFailed(GetRepositoriesFailure failure) =
      _$_RepositoriesGetterStateFailed;

  GetRepositoriesFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RepositoriesGetterStateFailedCopyWith<_RepositoriesGetterStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}
