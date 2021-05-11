import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/repository/model.dart';

part 'interface.freezed.dart';

abstract class RepositoriesRDS {
  const RepositoriesRDS();

  /// Get repositories with attributes defined by the given [repositoryNameAndOwner].
  ///
  /// Throws [GetRepositoriesException]:
  /// - [GetRepositoriesException.offline]: No internet connection.
  Future<Set<RepositoryR>> getRepositoriesByRepositoryname(
    RepositoryNameAndOwner repositoryNameAndOwner,
  );
}

@freezed
class GetRepositoriesException with _$GetRepositoriesException {
  const factory GetRepositoriesException.offline() =
      _GetRepositoriesExceptionOffline;
}
