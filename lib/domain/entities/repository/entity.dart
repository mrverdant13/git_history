import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
  }) = _Repository;
}
