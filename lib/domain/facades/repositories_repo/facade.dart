import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../entities/repository/entity.dart';
import '../../use_cases/get_repositories/use_case.dart';

abstract class RepositoriesRepo {
  const RepositoriesRepo();

  Future<Either<GetRepositoriesFailure, KtSet<Repository>>>
      getRepositoriesByNameAndOwner(
    RepositoryNameAndOwner repositoryNameAndOwner,
  );
}
