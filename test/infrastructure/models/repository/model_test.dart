import 'package:flutter_app_template/infrastructure/models/repository/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''
GIVEN two remote repository models with same attributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const rRepository1 = RepositoryR(
        id: 1,
        name: 'repo',
      );
      const rRepository2 = RepositoryR(
        id: 1,
        name: 'repo',
      );

      // ACT
      final repository1IsEqualToRepository2 = rRepository1 == rRepository2;
      final repository2IsEqualToRepository1 = rRepository2 == rRepository1;

      // ASSERT
      expect(repository1IsEqualToRepository2, isTrue);
      expect(repository2IsEqualToRepository1, isTrue);
    },
  );

  test(
    '''
GIVEN a JSON object representing a remote repository model
WHEN it is parsed to the model
THEN a remote repository model with the given data is created
''',
    () async {
      // ARRANGE
      const rRepositoryJson = <String, dynamic>{
        'id': 1,
        'name': 'repo_name',
      };

      const rRepository = RepositoryR(
        id: 1,
        name: 'repo_name',
      );

      // ACT
      final parsedRemoteRepository = RepositoryR.fromJson(rRepositoryJson);

      // ASSERT
      expect(parsedRemoteRepository, rRepository);
    },
  );
}
