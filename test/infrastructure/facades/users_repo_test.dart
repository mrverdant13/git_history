import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/use_cases/get_users/use_case.dart';
import 'package:flutter_app_template/infrastructure/data_source/users/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/facades/users_repo.dart';
import 'package:flutter_app_template/infrastructure/models/user/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockUsersRDS extends Mock implements UsersRDS {}

void main() {
  group(
    '''
GIVEN a users repository implementation''',
    () {
      // Remote data sources
      late MockUsersRDS mockUsersRDS;

      // Facades
      late UsersRepoImp usersRepo;

      setUp(
        () {
          mockUsersRDS = MockUsersRDS();
          usersRepo = UsersRepoImp(
            usersRDS: mockUsersRDS,
          );
        },
      );

      test(
        '''

AND a username pattern
WHEN a users search is triggered
THEN a collection of users with usernames similar to the provided username pattern is returned
''',
        () async {
          // ARRANGE
          const usernamePattern = 'user';
          final usersWithUsernamePattern = {
            const UserR(id: 1, username: 'user1', avatarUrl: 'url1'),
            const UserR(id: 2, username: 'user2', avatarUrl: 'url2'),
            const UserR(id: 3, username: 'user3', avatarUrl: 'url3'),
          };

          when(
            () => mockUsersRDS.getUsersByUsername(usernamePattern),
          ).thenAnswer(
            (_) async => usersWithUsernamePattern,
          );

          // ACT
          final result = await usersRepo.getUsersByUsername(usernamePattern);

          // ASSERT
          expect(
            result,
            Right(
              usersWithUsernamePattern
                  .map(
                    (userWithUsernamePattern) =>
                        userWithUsernamePattern.asEntity,
                  )
                  .toImmutableSet(),
            ),
          );
          verify(
            () => mockUsersRDS.getUsersByUsername(usernamePattern),
          ).called(1);
          verifyNoMoreInteractions(mockUsersRDS);
        },
      );

      test(
        '''

AND any username pattern
AND no internet connection
WHEN a users search is triggered
THEN a failure is returned
''',
        () async {
          // ARRANGE
          const anyUsernamePattern = 'abcdef';

          when(
            () => mockUsersRDS.getUsersByUsername(any()),
          ).thenThrow(
            const GetUsersException.offline(),
          );

          // ACT
          final result = await usersRepo.getUsersByUsername(anyUsernamePattern);

          // ASSERT
          expect(
            result,
            const Left(
              GetUsersFailure.offline(),
            ),
          );
          verify(
            () => mockUsersRDS.getUsersByUsername(any()),
          ).called(1);
          verifyNoMoreInteractions(mockUsersRDS);
        },
      );
    },
  );
}
