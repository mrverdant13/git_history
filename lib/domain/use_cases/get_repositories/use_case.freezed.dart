// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoryNameAndOwnerTearOff {
  const _$RepositoryNameAndOwnerTearOff();

  _RepositoryNameAndOwner call(
      {required String repositoryName, required User repositoryOwner}) {
    return _RepositoryNameAndOwner(
      repositoryName: repositoryName,
      repositoryOwner: repositoryOwner,
    );
  }
}

/// @nodoc
const $RepositoryNameAndOwner = _$RepositoryNameAndOwnerTearOff();

/// @nodoc
mixin _$RepositoryNameAndOwner {
  String get repositoryName => throw _privateConstructorUsedError;
  User get repositoryOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryNameAndOwnerCopyWith<RepositoryNameAndOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryNameAndOwnerCopyWith<$Res> {
  factory $RepositoryNameAndOwnerCopyWith(RepositoryNameAndOwner value,
          $Res Function(RepositoryNameAndOwner) then) =
      _$RepositoryNameAndOwnerCopyWithImpl<$Res>;
  $Res call({String repositoryName, User repositoryOwner});

  $UserCopyWith<$Res> get repositoryOwner;
}

/// @nodoc
class _$RepositoryNameAndOwnerCopyWithImpl<$Res>
    implements $RepositoryNameAndOwnerCopyWith<$Res> {
  _$RepositoryNameAndOwnerCopyWithImpl(this._value, this._then);

  final RepositoryNameAndOwner _value;
  // ignore: unused_field
  final $Res Function(RepositoryNameAndOwner) _then;

  @override
  $Res call({
    Object? repositoryName = freezed,
    Object? repositoryOwner = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryName: repositoryName == freezed
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryOwner: repositoryOwner == freezed
          ? _value.repositoryOwner
          : repositoryOwner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get repositoryOwner {
    return $UserCopyWith<$Res>(_value.repositoryOwner, (value) {
      return _then(_value.copyWith(repositoryOwner: value));
    });
  }
}

/// @nodoc
abstract class _$RepositoryNameAndOwnerCopyWith<$Res>
    implements $RepositoryNameAndOwnerCopyWith<$Res> {
  factory _$RepositoryNameAndOwnerCopyWith(_RepositoryNameAndOwner value,
          $Res Function(_RepositoryNameAndOwner) then) =
      __$RepositoryNameAndOwnerCopyWithImpl<$Res>;
  @override
  $Res call({String repositoryName, User repositoryOwner});

  @override
  $UserCopyWith<$Res> get repositoryOwner;
}

/// @nodoc
class __$RepositoryNameAndOwnerCopyWithImpl<$Res>
    extends _$RepositoryNameAndOwnerCopyWithImpl<$Res>
    implements _$RepositoryNameAndOwnerCopyWith<$Res> {
  __$RepositoryNameAndOwnerCopyWithImpl(_RepositoryNameAndOwner _value,
      $Res Function(_RepositoryNameAndOwner) _then)
      : super(_value, (v) => _then(v as _RepositoryNameAndOwner));

  @override
  _RepositoryNameAndOwner get _value => super._value as _RepositoryNameAndOwner;

  @override
  $Res call({
    Object? repositoryName = freezed,
    Object? repositoryOwner = freezed,
  }) {
    return _then(_RepositoryNameAndOwner(
      repositoryName: repositoryName == freezed
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      repositoryOwner: repositoryOwner == freezed
          ? _value.repositoryOwner
          : repositoryOwner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_RepositoryNameAndOwner implements _RepositoryNameAndOwner {
  const _$_RepositoryNameAndOwner(
      {required this.repositoryName, required this.repositoryOwner});

  @override
  final String repositoryName;
  @override
  final User repositoryOwner;

  @override
  String toString() {
    return 'RepositoryNameAndOwner(repositoryName: $repositoryName, repositoryOwner: $repositoryOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryNameAndOwner &&
            (identical(other.repositoryName, repositoryName) ||
                const DeepCollectionEquality()
                    .equals(other.repositoryName, repositoryName)) &&
            (identical(other.repositoryOwner, repositoryOwner) ||
                const DeepCollectionEquality()
                    .equals(other.repositoryOwner, repositoryOwner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repositoryName) ^
      const DeepCollectionEquality().hash(repositoryOwner);

  @JsonKey(ignore: true)
  @override
  _$RepositoryNameAndOwnerCopyWith<_RepositoryNameAndOwner> get copyWith =>
      __$RepositoryNameAndOwnerCopyWithImpl<_RepositoryNameAndOwner>(
          this, _$identity);
}

abstract class _RepositoryNameAndOwner implements RepositoryNameAndOwner {
  const factory _RepositoryNameAndOwner(
      {required String repositoryName,
      required User repositoryOwner}) = _$_RepositoryNameAndOwner;

  @override
  String get repositoryName => throw _privateConstructorUsedError;
  @override
  User get repositoryOwner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepositoryNameAndOwnerCopyWith<_RepositoryNameAndOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetRepositoriesFailureTearOff {
  const _$GetRepositoriesFailureTearOff();

  _GetRepositoriesFailureOffline offline() {
    return const _GetRepositoriesFailureOffline();
  }
}

/// @nodoc
const $GetRepositoriesFailure = _$GetRepositoriesFailureTearOff();

/// @nodoc
mixin _$GetRepositoriesFailure {
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
    required TResult Function(_GetRepositoriesFailureOffline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRepositoriesFailureOffline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRepositoriesFailureCopyWith<$Res> {
  factory $GetRepositoriesFailureCopyWith(GetRepositoriesFailure value,
          $Res Function(GetRepositoriesFailure) then) =
      _$GetRepositoriesFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetRepositoriesFailureCopyWithImpl<$Res>
    implements $GetRepositoriesFailureCopyWith<$Res> {
  _$GetRepositoriesFailureCopyWithImpl(this._value, this._then);

  final GetRepositoriesFailure _value;
  // ignore: unused_field
  final $Res Function(GetRepositoriesFailure) _then;
}

/// @nodoc
abstract class _$GetRepositoriesFailureOfflineCopyWith<$Res> {
  factory _$GetRepositoriesFailureOfflineCopyWith(
          _GetRepositoriesFailureOffline value,
          $Res Function(_GetRepositoriesFailureOffline) then) =
      __$GetRepositoriesFailureOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetRepositoriesFailureOfflineCopyWithImpl<$Res>
    extends _$GetRepositoriesFailureCopyWithImpl<$Res>
    implements _$GetRepositoriesFailureOfflineCopyWith<$Res> {
  __$GetRepositoriesFailureOfflineCopyWithImpl(
      _GetRepositoriesFailureOffline _value,
      $Res Function(_GetRepositoriesFailureOffline) _then)
      : super(_value, (v) => _then(v as _GetRepositoriesFailureOffline));

  @override
  _GetRepositoriesFailureOffline get _value =>
      super._value as _GetRepositoriesFailureOffline;
}

/// @nodoc

class _$_GetRepositoriesFailureOffline
    implements _GetRepositoriesFailureOffline {
  const _$_GetRepositoriesFailureOffline();

  @override
  String toString() {
    return 'GetRepositoriesFailure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetRepositoriesFailureOffline);
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
    required TResult Function(_GetRepositoriesFailureOffline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRepositoriesFailureOffline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _GetRepositoriesFailureOffline
    implements GetRepositoriesFailure {
  const factory _GetRepositoriesFailureOffline() =
      _$_GetRepositoriesFailureOffline;
}
