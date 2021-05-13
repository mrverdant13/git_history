import 'package:flutter/material.dart';
import 'package:flutter_app_template/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state_management/cubit/users_getter/users_getter_cubit.dart';
import 'user_tile.dart';

class UsersList extends StatelessWidget {
  const UsersList();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<UsersGetterCubit, UsersGetterState>(
      builder: (context, usersGetterState) => usersGetterState.maybeWhen(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        done: (users) => users.isEmpty()
            ? Center(
                child: Text(l10n.noUsersMessage),
              )
            : Column(
                children: [
                  ...users.iter.map(
                    (user) => UserTile(
                      key: ValueKey(user.id),
                      user: user,
                    ),
                  ),
                ],
              ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
