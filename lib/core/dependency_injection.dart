import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../domain/facades/repositories_repo/facade.dart';
import '../domain/facades/users_repo/facade.dart';
import '../domain/use_cases/get_repositories/use_case.dart';
import '../domain/use_cases/get_users/use_case.dart';
import '../infrastructure/data_source/repositories/remote/implementation.dart';
import '../infrastructure/data_source/repositories/remote/interface.dart';
import '../infrastructure/data_source/users/remote/implementation.dart';
import '../infrastructure/data_source/users/remote/interface.dart';
import '../infrastructure/facades/repositories_repo.dart';
import '../infrastructure/facades/users_repo.dart';
import '../state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
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
  getIt.registerLazySingleton<RepositoriesRDS>(
    () => RepositoriesRDSImp(
      dio: getIt(),
    ),
  );

  // Facades
  getIt.registerLazySingleton<UsersRepo>(
    () => UsersRepoImp(
      usersRDS: getIt(),
    ),
  );
  getIt.registerLazySingleton<RepositoriesRepo>(
    () => RepositoriesRepoImp(
      repositoriesRDS: getIt(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton<GetUsersByUsername>(
    () => GetUsersByUsername(
      usersRepo: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetRepositoriesByNameAndOwner>(
    () => GetRepositoriesByNameAndOwner(
      repositoriesRepo: getIt(),
    ),
  );

  // State managers
  getIt.registerFactory<UsersGetterCubit>(
    () => UsersGetterCubit(
      getUsersByUsername: getIt(),
    ),
  );
  getIt.registerFactory<RepositoriesGetterCubit>(
    () => RepositoriesGetterCubit(
      getRepositoriesByNameAndOwner: getIt(),
    ),
  );
}
