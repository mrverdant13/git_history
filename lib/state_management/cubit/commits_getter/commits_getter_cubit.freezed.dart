// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commits_getter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommitsGetterStateTearOff {
  const _$CommitsGetterStateTearOff();

  _CommitsGetterStateIdle idle() {
    return const _CommitsGetterStateIdle();
  }

  _CommitsGetterStateLoading loading() {
    return const _CommitsGetterStateLoading();
  }

  _CommitsGetterStateDone done({required CommitsPage commitsPage}) {
    return _CommitsGetterStateDone(
      commitsPage: commitsPage,
    );
  }

  _CommitsGetterStateFailed failed(GetCommitsFailure failure) {
    return _CommitsGetterStateFailed(
      failure,
    );
  }
}

/// @nodoc
const $CommitsGetterState = _$CommitsGetterStateTearOff();

/// @nodoc
mixin _$CommitsGetterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CommitsPage commitsPage) done,
    required TResult Function(GetCommitsFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CommitsPage commitsPage)? done,
    TResult Function(GetCommitsFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommitsGetterStateIdle value) idle,
    required TResult Function(_CommitsGetterStateLoading value) loading,
    required TResult Function(_CommitsGetterStateDone value) done,
    required TResult Function(_CommitsGetterStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommitsGetterStateIdle value)? idle,
    TResult Function(_CommitsGetterStateLoading value)? loading,
    TResult Function(_CommitsGetterStateDone value)? done,
    TResult Function(_CommitsGetterStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitsGetterStateCopyWith<$Res> {
  factory $CommitsGetterStateCopyWith(
          CommitsGetterState value, $Res Function(CommitsGetterState) then) =
      _$CommitsGetterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommitsGetterStateCopyWithImpl<$Res>
    implements $CommitsGetterStateCopyWith<$Res> {
  _$CommitsGetterStateCopyWithImpl(this._value, this._then);

  final CommitsGetterState _value;
  // ignore: unused_field
  final $Res Function(CommitsGetterState) _then;
}

/// @nodoc
abstract class _$CommitsGetterStateIdleCopyWith<$Res> {
  factory _$CommitsGetterStateIdleCopyWith(_CommitsGetterStateIdle value,
          $Res Function(_CommitsGetterStateIdle) then) =
      __$CommitsGetterStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$CommitsGetterStateIdleCopyWithImpl<$Res>
    extends _$CommitsGetterStateCopyWithImpl<$Res>
    implements _$CommitsGetterStateIdleCopyWith<$Res> {
  __$CommitsGetterStateIdleCopyWithImpl(_CommitsGetterStateIdle _value,
      $Res Function(_CommitsGetterStateIdle) _then)
      : super(_value, (v) => _then(v as _CommitsGetterStateIdle));

  @override
  _CommitsGetterStateIdle get _value => super._value as _CommitsGetterStateIdle;
}

/// @nodoc

class _$_CommitsGetterStateIdle implements _CommitsGetterStateIdle {
  const _$_CommitsGetterStateIdle();

  @override
  String toString() {
    return 'CommitsGetterState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CommitsGetterStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CommitsPage commitsPage) done,
    required TResult Function(GetCommitsFailure failure) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CommitsPage commitsPage)? done,
    TResult Function(GetCommitsFailure failure)? failed,
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
    required TResult Function(_CommitsGetterStateIdle value) idle,
    required TResult Function(_CommitsGetterStateLoading value) loading,
    required TResult Function(_CommitsGetterStateDone value) done,
    required TResult Function(_CommitsGetterStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommitsGetterStateIdle value)? idle,
    TResult Function(_CommitsGetterStateLoading value)? loading,
    TResult Function(_CommitsGetterStateDone value)? done,
    TResult Function(_CommitsGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _CommitsGetterStateIdle implements CommitsGetterState {
  const factory _CommitsGetterStateIdle() = _$_CommitsGetterStateIdle;
}

/// @nodoc
abstract class _$CommitsGetterStateLoadingCopyWith<$Res> {
  factory _$CommitsGetterStateLoadingCopyWith(_CommitsGetterStateLoading value,
          $Res Function(_CommitsGetterStateLoading) then) =
      __$CommitsGetterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CommitsGetterStateLoadingCopyWithImpl<$Res>
    extends _$CommitsGetterStateCopyWithImpl<$Res>
    implements _$CommitsGetterStateLoadingCopyWith<$Res> {
  __$CommitsGetterStateLoadingCopyWithImpl(_CommitsGetterStateLoading _value,
      $Res Function(_CommitsGetterStateLoading) _then)
      : super(_value, (v) => _then(v as _CommitsGetterStateLoading));

  @override
  _CommitsGetterStateLoading get _value =>
      super._value as _CommitsGetterStateLoading;
}

/// @nodoc

class _$_CommitsGetterStateLoading implements _CommitsGetterStateLoading {
  const _$_CommitsGetterStateLoading();

  @override
  String toString() {
    return 'CommitsGetterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CommitsGetterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CommitsPage commitsPage) done,
    required TResult Function(GetCommitsFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CommitsPage commitsPage)? done,
    TResult Function(GetCommitsFailure failure)? failed,
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
    required TResult Function(_CommitsGetterStateIdle value) idle,
    required TResult Function(_CommitsGetterStateLoading value) loading,
    required TResult Function(_CommitsGetterStateDone value) done,
    required TResult Function(_CommitsGetterStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommitsGetterStateIdle value)? idle,
    TResult Function(_CommitsGetterStateLoading value)? loading,
    TResult Function(_CommitsGetterStateDone value)? done,
    TResult Function(_CommitsGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CommitsGetterStateLoading implements CommitsGetterState {
  const factory _CommitsGetterStateLoading() = _$_CommitsGetterStateLoading;
}

/// @nodoc
abstract class _$CommitsGetterStateDoneCopyWith<$Res> {
  factory _$CommitsGetterStateDoneCopyWith(_CommitsGetterStateDone value,
          $Res Function(_CommitsGetterStateDone) then) =
      __$CommitsGetterStateDoneCopyWithImpl<$Res>;
  $Res call({CommitsPage commitsPage});

  $CommitsPageCopyWith<$Res> get commitsPage;
}

/// @nodoc
class __$CommitsGetterStateDoneCopyWithImpl<$Res>
    extends _$CommitsGetterStateCopyWithImpl<$Res>
    implements _$CommitsGetterStateDoneCopyWith<$Res> {
  __$CommitsGetterStateDoneCopyWithImpl(_CommitsGetterStateDone _value,
      $Res Function(_CommitsGetterStateDone) _then)
      : super(_value, (v) => _then(v as _CommitsGetterStateDone));

  @override
  _CommitsGetterStateDone get _value => super._value as _CommitsGetterStateDone;

  @override
  $Res call({
    Object? commitsPage = freezed,
  }) {
    return _then(_CommitsGetterStateDone(
      commitsPage: commitsPage == freezed
          ? _value.commitsPage
          : commitsPage // ignore: cast_nullable_to_non_nullable
              as CommitsPage,
    ));
  }

  @override
  $CommitsPageCopyWith<$Res> get commitsPage {
    return $CommitsPageCopyWith<$Res>(_value.commitsPage, (value) {
      return _then(_value.copyWith(commitsPage: value));
    });
  }
}

/// @nodoc

class _$_CommitsGetterStateDone implements _CommitsGetterStateDone {
  const _$_CommitsGetterStateDone({required this.commitsPage});

  @override
  final CommitsPage commitsPage;

  @override
  String toString() {
    return 'CommitsGetterState.done(commitsPage: $commitsPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommitsGetterStateDone &&
            (identical(other.commitsPage, commitsPage) ||
                const DeepCollectionEquality()
                    .equals(other.commitsPage, commitsPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commitsPage);

  @JsonKey(ignore: true)
  @override
  _$CommitsGetterStateDoneCopyWith<_CommitsGetterStateDone> get copyWith =>
      __$CommitsGetterStateDoneCopyWithImpl<_CommitsGetterStateDone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CommitsPage commitsPage) done,
    required TResult Function(GetCommitsFailure failure) failed,
  }) {
    return done(commitsPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CommitsPage commitsPage)? done,
    TResult Function(GetCommitsFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(commitsPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommitsGetterStateIdle value) idle,
    required TResult Function(_CommitsGetterStateLoading value) loading,
    required TResult Function(_CommitsGetterStateDone value) done,
    required TResult Function(_CommitsGetterStateFailed value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommitsGetterStateIdle value)? idle,
    TResult Function(_CommitsGetterStateLoading value)? loading,
    TResult Function(_CommitsGetterStateDone value)? done,
    TResult Function(_CommitsGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CommitsGetterStateDone implements CommitsGetterState {
  const factory _CommitsGetterStateDone({required CommitsPage commitsPage}) =
      _$_CommitsGetterStateDone;

  CommitsPage get commitsPage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommitsGetterStateDoneCopyWith<_CommitsGetterStateDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommitsGetterStateFailedCopyWith<$Res> {
  factory _$CommitsGetterStateFailedCopyWith(_CommitsGetterStateFailed value,
          $Res Function(_CommitsGetterStateFailed) then) =
      __$CommitsGetterStateFailedCopyWithImpl<$Res>;
  $Res call({GetCommitsFailure failure});

  $GetCommitsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CommitsGetterStateFailedCopyWithImpl<$Res>
    extends _$CommitsGetterStateCopyWithImpl<$Res>
    implements _$CommitsGetterStateFailedCopyWith<$Res> {
  __$CommitsGetterStateFailedCopyWithImpl(_CommitsGetterStateFailed _value,
      $Res Function(_CommitsGetterStateFailed) _then)
      : super(_value, (v) => _then(v as _CommitsGetterStateFailed));

  @override
  _CommitsGetterStateFailed get _value =>
      super._value as _CommitsGetterStateFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CommitsGetterStateFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GetCommitsFailure,
    ));
  }

  @override
  $GetCommitsFailureCopyWith<$Res> get failure {
    return $GetCommitsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CommitsGetterStateFailed implements _CommitsGetterStateFailed {
  const _$_CommitsGetterStateFailed(this.failure);

  @override
  final GetCommitsFailure failure;

  @override
  String toString() {
    return 'CommitsGetterState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommitsGetterStateFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CommitsGetterStateFailedCopyWith<_CommitsGetterStateFailed> get copyWith =>
      __$CommitsGetterStateFailedCopyWithImpl<_CommitsGetterStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CommitsPage commitsPage) done,
    required TResult Function(GetCommitsFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CommitsPage commitsPage)? done,
    TResult Function(GetCommitsFailure failure)? failed,
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
    required TResult Function(_CommitsGetterStateIdle value) idle,
    required TResult Function(_CommitsGetterStateLoading value) loading,
    required TResult Function(_CommitsGetterStateDone value) done,
    required TResult Function(_CommitsGetterStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommitsGetterStateIdle value)? idle,
    TResult Function(_CommitsGetterStateLoading value)? loading,
    TResult Function(_CommitsGetterStateDone value)? done,
    TResult Function(_CommitsGetterStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CommitsGetterStateFailed implements CommitsGetterState {
  const factory _CommitsGetterStateFailed(GetCommitsFailure failure) =
      _$_CommitsGetterStateFailed;

  GetCommitsFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommitsGetterStateFailedCopyWith<_CommitsGetterStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
