import 'package:flutter/material.dart';

import '../../../../domain/entities/user/entity.dart';

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
        onTap: () {},
      );
}
