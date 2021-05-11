import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/infrastructure/models/repository/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    '''
GIVEN a remote repository model
WHEN it is converted to its entity representation
THEN a repository entity with the same atributes is obtained
''',
    () async {
      // ARRANGE
      const rRepository = RepositoryR(
        id: 1,
        name: 'repository_name',
      );
      const repository = Repository(
        id: 1,
        name: 'repository_name',
      );

      // ACT
      final repositoryModelAsEntity = rRepository.asEntity;

      // ASSERT
      expect(repositoryModelAsEntity, repository);
    },
  );
}
