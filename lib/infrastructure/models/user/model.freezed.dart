// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserR _$UserRFromJson(Map<String, dynamic> json) {
  return _UserR.fromJson(json);
}

/// @nodoc
class _$UserRTearOff {
  const _$UserRTearOff();

  _UserR call(
      {required int id,
      @JsonKey(name: 'login') required String username,
      @JsonKey(name: 'avatar_url') required String avatarUrl}) {
    return _UserR(
      id: id,
      username: username,
      avatarUrl: avatarUrl,
    );
  }

  UserR fromJson(Map<String, Object> json) {
    return UserR.fromJson(json);
  }
}

/// @nodoc
const $UserR = _$UserRTearOff();

/// @nodoc
mixin _$UserR {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRCopyWith<UserR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRCopyWith<$Res> {
  factory $UserRCopyWith(UserR value, $Res Function(UserR) then) =
      _$UserRCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'login') String username,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$UserRCopyWithImpl<$Res> implements $UserRCopyWith<$Res> {
  _$UserRCopyWithImpl(this._value, this._then);

  final UserR _value;
  // ignore: unused_field
  final $Res Function(UserR) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRCopyWith<$Res> implements $UserRCopyWith<$Res> {
  factory _$UserRCopyWith(_UserR value, $Res Function(_UserR) then) =
      __$UserRCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'login') String username,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$UserRCopyWithImpl<$Res> extends _$UserRCopyWithImpl<$Res>
    implements _$UserRCopyWith<$Res> {
  __$UserRCopyWithImpl(_UserR _value, $Res Function(_UserR) _then)
      : super(_value, (v) => _then(v as _UserR));

  @override
  _UserR get _value => super._value as _UserR;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_UserR(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserR implements _UserR {
  const _$_UserR(
      {required this.id,
      @JsonKey(name: 'login') required this.username,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$_UserR.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'login')
  final String username;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'UserR(id: $id, username: $username, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserR &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$UserRCopyWith<_UserR> get copyWith =>
      __$UserRCopyWithImpl<_UserR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRToJson(this);
  }
}

abstract class _UserR implements UserR {
  const factory _UserR(
      {required int id,
      @JsonKey(name: 'login') required String username,
      @JsonKey(name: 'avatar_url') required String avatarUrl}) = _$_UserR;

  factory _UserR.fromJson(Map<String, dynamic> json) = _$_UserR.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'login')
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRCopyWith<_UserR> get copyWith => throw _privateConstructorUsedError;
}
