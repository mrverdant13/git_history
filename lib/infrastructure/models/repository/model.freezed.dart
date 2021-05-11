// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryR _$RepositoryRFromJson(Map<String, dynamic> json) {
  return _RepositoryR.fromJson(json);
}

/// @nodoc
class _$RepositoryRTearOff {
  const _$RepositoryRTearOff();

  _RepositoryR call({required int id, required String name}) {
    return _RepositoryR(
      id: id,
      name: name,
    );
  }

  RepositoryR fromJson(Map<String, Object> json) {
    return RepositoryR.fromJson(json);
  }
}

/// @nodoc
const $RepositoryR = _$RepositoryRTearOff();

/// @nodoc
mixin _$RepositoryR {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryRCopyWith<RepositoryR> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryRCopyWith<$Res> {
  factory $RepositoryRCopyWith(
          RepositoryR value, $Res Function(RepositoryR) then) =
      _$RepositoryRCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$RepositoryRCopyWithImpl<$Res> implements $RepositoryRCopyWith<$Res> {
  _$RepositoryRCopyWithImpl(this._value, this._then);

  final RepositoryR _value;
  // ignore: unused_field
  final $Res Function(RepositoryR) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryRCopyWith<$Res>
    implements $RepositoryRCopyWith<$Res> {
  factory _$RepositoryRCopyWith(
          _RepositoryR value, $Res Function(_RepositoryR) then) =
      __$RepositoryRCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$RepositoryRCopyWithImpl<$Res> extends _$RepositoryRCopyWithImpl<$Res>
    implements _$RepositoryRCopyWith<$Res> {
  __$RepositoryRCopyWithImpl(
      _RepositoryR _value, $Res Function(_RepositoryR) _then)
      : super(_value, (v) => _then(v as _RepositoryR));

  @override
  _RepositoryR get _value => super._value as _RepositoryR;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_RepositoryR(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_RepositoryR implements _RepositoryR {
  const _$_RepositoryR({required this.id, required this.name});

  factory _$_RepositoryR.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryRFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RepositoryR(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryR &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$RepositoryRCopyWith<_RepositoryR> get copyWith =>
      __$RepositoryRCopyWithImpl<_RepositoryR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryRToJson(this);
  }
}

abstract class _RepositoryR implements RepositoryR {
  const factory _RepositoryR({required int id, required String name}) =
      _$_RepositoryR;

  factory _RepositoryR.fromJson(Map<String, dynamic> json) =
      _$_RepositoryR.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepositoryRCopyWith<_RepositoryR> get copyWith =>
      throw _privateConstructorUsedError;
}
