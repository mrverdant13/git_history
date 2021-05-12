// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitR _$CommitRFromJson(Map<String, dynamic> json) {
  return _CommitR.fromJson(json);
}

/// @nodoc
class _$CommitRTearOff {
  const _$CommitRTearOff();

  _CommitR call({required String sha, required String message}) {
    return _CommitR(
      sha: sha,
      message: message,
    );
  }

  CommitR fromJson(Map<String, Object> json) {
    return CommitR.fromJson(json);
  }
}

/// @nodoc
const $CommitR = _$CommitRTearOff();

/// @nodoc
mixin _$CommitR {
  String get sha => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitRCopyWith<CommitR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitRCopyWith<$Res> {
  factory $CommitRCopyWith(CommitR value, $Res Function(CommitR) then) =
      _$CommitRCopyWithImpl<$Res>;
  $Res call({String sha, String message});
}

/// @nodoc
class _$CommitRCopyWithImpl<$Res> implements $CommitRCopyWith<$Res> {
  _$CommitRCopyWithImpl(this._value, this._then);

  final CommitR _value;
  // ignore: unused_field
  final $Res Function(CommitR) _then;

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
abstract class _$CommitRCopyWith<$Res> implements $CommitRCopyWith<$Res> {
  factory _$CommitRCopyWith(_CommitR value, $Res Function(_CommitR) then) =
      __$CommitRCopyWithImpl<$Res>;
  @override
  $Res call({String sha, String message});
}

/// @nodoc
class __$CommitRCopyWithImpl<$Res> extends _$CommitRCopyWithImpl<$Res>
    implements _$CommitRCopyWith<$Res> {
  __$CommitRCopyWithImpl(_CommitR _value, $Res Function(_CommitR) _then)
      : super(_value, (v) => _then(v as _CommitR));

  @override
  _CommitR get _value => super._value as _CommitR;

  @override
  $Res call({
    Object? sha = freezed,
    Object? message = freezed,
  }) {
    return _then(_CommitR(
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

@JsonSerializable(explicitToJson: true)
class _$_CommitR implements _CommitR {
  const _$_CommitR({required this.sha, required this.message});

  factory _$_CommitR.fromJson(Map<String, dynamic> json) =>
      _$_$_CommitRFromJson(json);

  @override
  final String sha;
  @override
  final String message;

  @override
  String toString() {
    return 'CommitR(sha: $sha, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommitR &&
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
  _$CommitRCopyWith<_CommitR> get copyWith =>
      __$CommitRCopyWithImpl<_CommitR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommitRToJson(this);
  }
}

abstract class _CommitR implements CommitR {
  const factory _CommitR({required String sha, required String message}) =
      _$_CommitR;

  factory _CommitR.fromJson(Map<String, dynamic> json) = _$_CommitR.fromJson;

  @override
  String get sha => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommitRCopyWith<_CommitR> get copyWith =>
      throw _privateConstructorUsedError;
}
