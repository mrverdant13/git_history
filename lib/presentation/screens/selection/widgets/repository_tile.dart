import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/repository/entity.dart';
import '../../../../state_management/change_notifier/global_store/global_store_change_notifier.dart';
import '../values/dimensions.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({
    Key? key,
    required this.repository,
  }) : super(key: key);

  final Repository repository;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: ScreenDimensions.repositoryTilePadding,
        title: Text(repository.name),
        onTap: () {
          context.read<GlobalStoreChangeNotifier>().selectedRepository =
              repository;

          // TODO: navigate to commit history screen.
        },
      );
}
