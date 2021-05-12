part of 'model.dart';

extension CommitRModel on CommitR {
  Commit get asEntity => Commit(
        sha: sha,
        message: message,
      );
}
