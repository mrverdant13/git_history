import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user/model.dart';

part 'interface.freezed.dart';

abstract class UsersRDS {
  const UsersRDS();

  /// Get users with usernames similar to the given [username].
  ///
  /// Throws [GetUsersException]:
  /// - [GetUsersException.offline]: No internet connection.
  Future<Set<UserR>> getUsersByUsername(
    String username,
  );
}

@freezed
class GetUsersException with _$GetUsersException {
  const factory GetUsersException.offline() = _GetUsersExceptionOffline;
}
