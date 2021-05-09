import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../entities/user/entity.dart';
import '../../use_cases/get_users/use_case.dart';

abstract class UsersRepo {
  const UsersRepo();

  Future<Either<GetUsersFailure, KtSet<User>>> getUsersByUsername(
    String username,
  );
}
