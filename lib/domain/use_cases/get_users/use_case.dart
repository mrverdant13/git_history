import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../entities/user/entity.dart';
import '../../facades/users_repo/facade.dart';
import '../types.dart';

part 'failures.dart';
part 'use_case.freezed.dart';

class GetUsersByUsername
    extends FutureUseCase<GetUsersFailure, KtSet<User>, String> {
  const GetUsersByUsername({
    required this.usersRepo,
  });

  final UsersRepo usersRepo;

  @override
  Future<Either<GetUsersFailure, KtSet<User>>> call(
    String username,
  ) =>
      usersRepo.getUsersByUsername(
        username,
      );
}
