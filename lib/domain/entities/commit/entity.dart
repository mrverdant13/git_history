import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class Commit with _$Commit {
  const factory Commit({
    required String sha,
    required String message,
  }) = _Commit;
}
