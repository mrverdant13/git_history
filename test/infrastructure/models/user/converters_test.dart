import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/infrastructure/models/user/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''
GIVEN a remote user model
WHEN it is converted to its entity representation
THEN a user entity with the same atributes is obtained
''',
    () async {
      // ARRANGE
      const rUser = UserR(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );
      const user = User(
        id: 1,
        username: 'username',
        avatarUrl: 'avatar url',
      );

      // ACT
      final userModelAsEntity = rUser.asEntity;

      // ASSERT
      expect(userModelAsEntity, user);
    },
  );
}
