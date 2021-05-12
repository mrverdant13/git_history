import 'package:flutter/material.dart';
import 'package:flutter_app_template/state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/user/entity.dart';
import '../../../../state_management/change_notifier/global_store/global_store_change_notifier.dart';
import '../state_management/selection_form_group/form_group.dart';
import '../values/dimensions.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: ScreenDimensions.userTilePadding,
        leading: Image.network(user.avatarUrl),
        title: Text(user.username),
        onTap: () {
          context.read<GlobalStoreChangeNotifier>().selectedUser = user;

          final formGroup = context.read<SelectionFormGroup>();
          formGroup.usernameTextControl.markAsDisabled();
          formGroup.repositoryNameTextControl.markAsEnabled();

          context.read<RepositoriesGetterCubit>().reset();
          formGroup.repositoryNameTextControl.reset();
        },
      );
}
