import 'package:flutter/material.dart';
import 'package:flutter_app_template/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import 'repository_tile.dart';

class RepositoriesList extends StatelessWidget {
  const RepositoriesList();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<RepositoriesGetterCubit, RepositoriesGetterState>(
      builder: (context, repositoriesGetterState) =>
          repositoriesGetterState.maybeWhen(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        done: (repositories) => repositories.isEmpty()
            ? Center(
                child: Text(l10n.noRepositoriesMessage),
              )
            : Column(
                children: [
                  ...repositories.iter.map(
                    (repository) => RepositoryTile(
                      key: ValueKey(repository.id),
                      repository: repository,
                    ),
                  ),
                ],
              ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
