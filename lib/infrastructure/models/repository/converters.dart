part of 'model.dart';

extension RepositoryRModel on RepositoryR {
  Repository get asEntity => Repository(
        id: id,
        name: name,
      );
}
