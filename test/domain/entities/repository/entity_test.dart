import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''

GIVEN two repository entities with same atributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const repo2 = Repository(
        id: 1,
        name: 'repo_name_1',
      );
      const repo1 = Repository(
        id: 1,
        name: 'repo_name_1',
      );

      // ACT
      final repo1IsEqualToRepo2 = repo1 == repo2;
      final repo2IsEqualToRepo1 = repo2 == repo1;

      // ASSERT
      expect(repo1IsEqualToRepo2, isTrue);
      expect(repo2IsEqualToRepo1, isTrue);
    },
  );
}
