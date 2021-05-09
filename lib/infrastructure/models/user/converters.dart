part of 'model.dart';

extension UserRModel on UserR {
  User get asEntity => User(
        id: id,
        username: username,
        avatarUrl: avatarUrl,
      );
}
