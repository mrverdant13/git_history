// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserR _$_$_UserRFromJson(Map<String, dynamic> json) {
  return _$_UserR(
    id: json['id'] as int,
    username: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$_$_UserRToJson(_$_UserR instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.username,
      'avatar_url': instance.avatarUrl,
    };
