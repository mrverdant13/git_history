import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../domain/facades/users_repo/facade.dart';
import '../domain/use_cases/get_users/use_case.dart';
import '../infrastructure/data_source/users/remote/implementation.dart';
import '../infrastructure/data_source/users/remote/interface.dart';
import '../infrastructure/facades/users_repo.dart';
import '../state_management/cubit/users_getter/users_getter_cubit.dart';
import 'flavors.dart';

final getIt = GetIt.instance;

Future<void> injectDependencies(Flavor flavor) async {
  getIt.registerSingleton(flavor);

  // External
  getIt.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: 'https://api.github.com',
      ),
    ),
  );

  // Data sources
  getIt.registerLazySingleton<UsersRDS>(
    () => UsersRDSImp(
      dio: getIt(),
    ),
  );

  // Facades
  getIt.registerLazySingleton<UsersRepo>(
    () => UsersRepoImp(
      usersRDS: getIt(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton<GetUsersByUsername>(
    () => GetUsersByUsername(
      usersRepo: getIt(),
    ),
  );

  getIt.registerFactory<UsersGetterCubit>(
    () => UsersGetterCubit(
      getUsersByUsername: getIt(),
    ),
  );
}
