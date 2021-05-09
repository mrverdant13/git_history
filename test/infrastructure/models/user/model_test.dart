import 'package:flutter_app_template/infrastructure/models/user/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''
GIVEN two remote user models with same attributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const rUser1 = UserR(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );
      const rUser2 = UserR(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );

      // ACT
      final user1IsEqualToUser2 = rUser1 == rUser2;
      final user2IsEqualToUser1 = rUser2 == rUser1;

      // ASSERT
      expect(user1IsEqualToUser2, isTrue);
      expect(user2IsEqualToUser1, isTrue);
    },
  );

  test(
    '''
GIVEN a JSON object representing a remote user model
WHEN it is parsed to the model
THEN a remote user model with the given data is created
''',
    () async {
      // ARRANGE
      const rUserJson = <String, dynamic>{
        'id': 1,
        'login': 'username',
        'avatar_url': 'avatar url'
      };

      const rUser = UserR(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );

      // ACT
      final parsedRemoteUser = UserR.fromJson(rUserJson);

      // ASSERT
      expect(parsedRemoteUser, rUser);
    },
  );
}
