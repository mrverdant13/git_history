import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''
GIVEN two user entities with same atributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const user2 = User(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );
      const user1 = User(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );

      // ACT
      final user1IsEqualToUser2 = user1 == user2;
      final user2IsEqualToUser1 = user2 == user1;

      // ASSERT
      expect(user1IsEqualToUser2, isTrue);
      expect(user2IsEqualToUser1, isTrue);
    },
  );
}
