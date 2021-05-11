import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/user/entity.dart';
import '../../../../state_management/change_notifier/global_store/global_store_change_notifier.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.all(10.0),
        leading: Image.network(user.avatarUrl),
        title: Text(user.username),
        onTap: () {
          context.read<GlobalStoreChangeNotifier>().selectedUser = user;
        },
      );
}
