import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:flutter_app_template/state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';

void main() {
  test(
    '''

GIVEN two states of same type and with same attributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const idleState1 = RepositoriesGetterState.idle();
      const idleState2 = RepositoriesGetterState.idle();

      const loadingState1 = RepositoriesGetterState.loading();
      const loadingState2 = RepositoriesGetterState.loading();

      const doneStateWithNoRepositories1 = RepositoriesGetterState.done(
        repositories: KtSet.empty(),
      );
      const doneStateWithNoRepositories2 = RepositoriesGetterState.done(
        repositories: KtSet.empty(),
      );

      final repositories = List.generate(
        3,
        (index) => Repository(
          id: index,
          name: 'repository$index',
        ),
      ).toImmutableSet();
      final doneStateWithRepositories1 =
          RepositoriesGetterState.done(repositories: repositories);
      final doneStateWithRepositories2 =
          RepositoriesGetterState.done(repositories: repositories);

      const failedState1 =
          RepositoriesGetterState.failed(GetRepositoriesFailure.offline());
      const failedState2 =
          RepositoriesGetterState.failed(GetRepositoriesFailure.offline());

      // ACT

      // ASSERT
      expect(idleState1, idleState2);
      expect(loadingState1, loadingState2);
      expect(doneStateWithNoRepositories1, doneStateWithNoRepositories2);
      expect(doneStateWithRepositories1, doneStateWithRepositories2);
      expect(failedState1, failedState2);
    },
  );
}
