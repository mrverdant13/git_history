import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/commit/entity.dart';

part 'converters.dart';
part 'model.freezed.dart';
part 'model.g.dart';

/// {@template CommitR}
/// Remote commit model.
/// {@endtemplate}
@freezed
class CommitR with _$CommitR {
  /// {@macro CommitR}
  @JsonSerializable(explicitToJson: true)
  const factory CommitR({
    required String sha,
    required String message,
  }) = _CommitR;

  factory CommitR.fromJson(Map<String, dynamic> json) =>
      _$CommitRFromJson(json);
}
