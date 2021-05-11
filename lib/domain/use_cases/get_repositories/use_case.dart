import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../entities/repository/entity.dart';
import '../../entities/user/entity.dart';
import '../../facades/repositories_repo/facade.dart';
import '../types.dart';

part 'failures.dart';
part 'use_case.freezed.dart';

class GetRepositoriesByNameAndOwner extends FutureUseCase<
    GetRepositoriesFailure, KtSet<Repository>, RepositoryNameAndOwner> {
  const GetRepositoriesByNameAndOwner({
    required this.repositoriesRepo,
  });

  final RepositoriesRepo repositoriesRepo;

  @override
  Future<Either<GetRepositoriesFailure, KtSet<Repository>>> call(
    RepositoryNameAndOwner repositoryNameAndOwner,
  ) =>
      repositoriesRepo.getRepositoriesByNameAndOwner(
        repositoryNameAndOwner,
      );
}

@freezed
class RepositoryNameAndOwner with _$RepositoryNameAndOwner {
  const factory RepositoryNameAndOwner({
    required String repositoryName,
    required User repositoryOwner,
  }) = _RepositoryNameAndOwner;
}
