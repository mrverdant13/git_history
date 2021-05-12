import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/repository/entity.dart';

part 'converters.dart';
part 'model.freezed.dart';
part 'model.g.dart';

/// {@template RepositoryR}
/// Remote repository model.
/// {@endtemplate}
@freezed
class RepositoryR with _$RepositoryR {
  /// {@macro RepositoryR}
  @JsonSerializable(explicitToJson: true)
  const factory RepositoryR({
    required int id,
    required String name,
  }) = _RepositoryR;

  factory RepositoryR.fromJson(Map<String, dynamic> json) =>
      _$RepositoryRFromJson(json);
}
