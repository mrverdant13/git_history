import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// {@template UserR}
/// Remote user model.
/// {@endtemplate}
@freezed
class UserR with _$UserR {
  /// {@macro UserR}
  @JsonSerializable(explicitToJson: true)
  const factory UserR({
    required int id,
    @JsonKey(name: 'login') required String username,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _UserR;

  factory UserR.fromJson(Map<String, dynamic> json) => _$UserRFromJson(json);
}
