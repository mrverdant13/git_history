import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/infrastructure/models/user/model.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/entities/user/entity.dart';
import '../../domain/facades/users_repo/facade.dart';
import '../../domain/use_cases/get_users/use_case.dart';
import '../data_source/users/remote/interface.dart';

class UsersRepoImp extends UsersRepo {
  const UsersRepoImp({
    required this.usersRDS,
  });

  final UsersRDS usersRDS;

  @override
  Future<Either<GetUsersFailure, KtSet<User>>> getUsersByUsername(
    String username,
  ) async {
    late final Set<UserR> usersR;

    try {
      usersR = await usersRDS.getUsersByUsername(
        username,
      );
    } on GetUsersException catch (e) {
      return Left(
        e.when(
          offline: () => const GetUsersFailure.offline(),
        ),
      );
    }

    final users = usersR
        .map(
          (userR) => userR.asEntity,
        )
        .toImmutableSet();

    return Right(users);
  }
}
