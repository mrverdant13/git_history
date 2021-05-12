// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommitTearOff {
  const _$CommitTearOff();

  _Commit call({required String sha, required String message}) {
    return _Commit(
      sha: sha,
      message: message,
    );
  }
}

/// @nodoc
const $Commit = _$CommitTearOff();

/// @nodoc
mixin _$Commit {
  String get sha => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitCopyWith<Commit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res>;
  $Res call({String sha, String message});
}

/// @nodoc
class _$CommitCopyWithImpl<$Res> implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  final Commit _value;
  // ignore: unused_field
  final $Res Function(Commit) _then;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommitCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$CommitCopyWith(_Commit value, $Res Function(_Commit) then) =
      __$CommitCopyWithImpl<$Res>;
  @override
  $Res call({String sha, String message});
}

/// @nodoc
class __$CommitCopyWithImpl<$Res> extends _$CommitCopyWithImpl<$Res>
    implements _$CommitCopyWith<$Res> {
  __$CommitCopyWithImpl(_Commit _value, $Res Function(_Commit) _then)
      : super(_value, (v) => _then(v as _Commit));

  @override
  _Commit get _value => super._value as _Commit;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_Commit(
      sha: sha == freezed
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Commit implements _Commit {
  const _$_Commit({required this.sha, required this.message});

  @override
  final String sha;
  @override
  final String message;

  @override
  String toString() {
    return 'Commit(sha: $sha, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Commit &&
            (identical(other.sha, sha) ||
                const DeepCollectionEquality().equals(other.sha, sha)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sha) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$CommitCopyWith<_Commit> get copyWith =>
      __$CommitCopyWithImpl<_Commit>(this, _$identity);
}

abstract class _Commit implements Commit {
  const factory _Commit({required String sha, required String message}) =
      _$_Commit;

  @override
  String get sha => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommitCopyWith<_Commit> get copyWith => throw _privateConstructorUsedError;
}
