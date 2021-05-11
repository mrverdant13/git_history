import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String avatarUrl,
  }) = _User;
}
