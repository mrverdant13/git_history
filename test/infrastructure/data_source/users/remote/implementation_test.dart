import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_template/infrastructure/data_source/users/remote/implementation.dart';
import 'package:flutter_app_template/infrastructure/data_source/users/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/models/user/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group(
    '''
GIVEN a users remote data source''',
    () {
      // External dependencies
      late MockDio mockDio;

      // Remota data source
      late UsersRDSImp usersRDS;

      setUp(
        () {
          mockDio = MockDio();
          usersRDS = UsersRDSImp(
            dio: mockDio,
          );
        },
      );

      test(
        '''

AND a username pattern
WHEN a users search is triggered
THEN a set of remote user models with usernames similar to the provided one is returned
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
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: <String, dynamic>{
                'items': [
                  {
                    'id': 1,
                    'login': 'user1',
                    'avatar_url': 'url1',
                  },
                  {
                    'id': 2,
                    'login': 'user2',
                    'avatar_url': 'url2',
                  },
                  {
                    'id': 3,
                    'login': 'user3',
                    'avatar_url': 'url3',
                  },
                ],
              },
            ),
          );

          // ACT
          final result = await usersRDS.getUsersByUsername(usernamePattern);

          // ASSERT
          expect(setEquals(result, usersWithUsernamePattern), isTrue);
          verify(
            () => mockDio.get(
              '/search/users',
              queryParameters: {
                'q': usernamePattern,
              },
            ),
          ).called(1);
        },
      );

      test(
        '''

AND any username pattern
AND no internet connection
WHEN a users search is triggered
THEN an exception is thrown
      ''',
        () async {
          // ARRANGE
          const usernamePattern = 'abcdef';

          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenThrow(
            DioError(
              requestOptions: RequestOptions(
                path: '',
              ),
              // ignore: avoid_redundant_argument_values
              type: DioErrorType.other,
              error: const SocketException(''),
            ),
          );

          // ACT
          Future<void> action() async =>
              usersRDS.getUsersByUsername(usernamePattern);

          // ASSERT
          expect(
            action,
            throwsA(
              const GetUsersException.offline(),
            ),
          );
          verify(
            () => mockDio.get(
              '/search/users',
              queryParameters: {
                'q': usernamePattern,
              },
            ),
          ).called(1);
        },
      );
    },
  );
}
