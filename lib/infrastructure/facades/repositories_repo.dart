import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/entities/repository/entity.dart';
import '../../domain/facades/repositories_repo/facade.dart';
import '../../domain/use_cases/get_repositories/use_case.dart';
import '../data_source/repositories/remote/interface.dart';
import '../models/repository/model.dart';

class RepositoriesRepoImp extends RepositoriesRepo {
  const RepositoriesRepoImp({
    required this.repositoriesRDS,
  });

  final RepositoriesRDS repositoriesRDS;

  @override
  Future<Either<GetRepositoriesFailure, KtSet<Repository>>>
      getRepositoriesByNameAndOwner(
    RepositoryNameAndOwner repositoryNameAndOwner,
  ) async {
    late final Set<RepositoryR> repositoriesR;

    try {
      repositoriesR = await repositoriesRDS.getRepositoriesByNameAndOwner(
        repositoryNameAndOwner,
      );
    } on GetRepositoriesException catch (e) {
      return Left(
        e.when(
          offline: () => const GetRepositoriesFailure.offline(),
        ),
      );
    }

    final repositories = repositoriesR
        .map(
          (userR) => userR.asEntity,
        )
        .toImmutableSet();

    return Right(repositories);
  }
}
