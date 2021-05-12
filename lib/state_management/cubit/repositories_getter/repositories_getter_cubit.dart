import 'package:bloc/bloc.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'repositories_getter_state.dart';
part 'repositories_getter_cubit.freezed.dart';

class RepositoriesGetterCubit extends Cubit<RepositoriesGetterState> {
  RepositoriesGetterCubit({
    required GetRepositoriesByNameAndOwner getRepositoriesByNameAndOwner,
  })   : _getRepositoriesByNameAndOwner = getRepositoriesByNameAndOwner,
        super(const RepositoriesGetterState.idle());

  final GetRepositoriesByNameAndOwner _getRepositoriesByNameAndOwner;

  Future<void> getRepositoriesByNameAndOwner(
    RepositoryNameAndOwner repositoryNameAndOwner,
  ) async {
    emit(const RepositoriesGetterState.loading());

    final failureOrRepositories =
        await _getRepositoriesByNameAndOwner(repositoryNameAndOwner);

    emit(
      failureOrRepositories.fold(
        (failure) => RepositoriesGetterState.failed(failure),
        (repositories) =>
            RepositoriesGetterState.done(repositories: repositories),
      ),
    );
  }

  void reset() => emit(const RepositoriesGetterState.idle());
}
