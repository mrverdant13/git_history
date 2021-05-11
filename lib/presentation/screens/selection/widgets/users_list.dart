import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state_management/cubit/users_getter/users_getter_cubit.dart';
import 'user_tile.dart';

class UsersList extends StatelessWidget {
  const UsersList();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UsersGetterCubit, UsersGetterState>(
        builder: (context, usersGetterState) => usersGetterState.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          done: (users) => users.isEmpty()
              ? const Center(
                  child: Text('No users found'),
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
