import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/facades/users_repo/facade.dart';
import 'package:flutter_app_template/domain/use_cases/get_users/use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockUsersRepo extends Mock implements UsersRepo {}

void main() {
  // Facades
  late final MockUsersRepo mockUsersRepo;

  // Use case
  late final GetUsersByUsername getUsersByUsername;

  setUp(
    () {
      mockUsersRepo = MockUsersRepo();
      getUsersByUsername = GetUsersByUsername(
        usersRepo: mockUsersRepo,
      );
    },
  );

  test(
    '''
GIVEN a username pattern
WHEN a users search is triggered
THEN a collection of users with usernames similar to the provided username pattern is returned
''',
    () async {
      // ARRANGE
      const usernamePattern = 'user';
      final usersWithUsernamePattern = const [
        User(id: 1, username: 'user1', avatarUrl: 'url1'),
        User(id: 2, username: 'user2', avatarUrl: 'url2'),
        User(id: 3, username: 'user3', avatarUrl: 'url3'),
      ].toImmutableSet();

      when(
        () => mockUsersRepo.getUsersByUsername(usernamePattern),
      ).thenAnswer(
        (_) async => Right(
          usersWithUsernamePattern,
        ),
      );

      // ACT
      final result = await getUsersByUsername(usernamePattern);

      // ASSERT
      expect(result, Right(usersWithUsernamePattern));
      verify(() => mockUsersRepo.getUsersByUsername(usernamePattern)).called(1);
      verifyNoMoreInteractions(mockUsersRepo);
    },
  );
}
