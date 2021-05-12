import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../domain/use_cases/get_repositories/use_case.dart';
import '../../../../state_management/change_notifier/global_store/global_store_change_notifier.dart';
import '../../../../state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import '../state_management/selection_form_group/form_group.dart';

class RepositoriesSearchButton extends StatelessWidget {
  const RepositoriesSearchButton();

  @override
  Widget build(BuildContext context) =>
      BlocListener<RepositoriesGetterCubit, RepositoriesGetterState>(
        listener: (context, repositoriesGetterState) {
          repositoriesGetterState.maybeWhen(
            failed: (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  failure.when(
                    offline: () =>
                        'There is not internet connection. Try again later.',
                  ),
                ),
              ),
            ),
            orElse: () {},
          );
        },
        child: ElevatedButton(
          onPressed: () {
            final formGroup = context.read<SelectionFormGroup>();

            formGroup.unfocus();

            if (formGroup.valid) {
              context
                  .read<RepositoriesGetterCubit>()
                  .getRepositoriesByNameAndOwner(
                    RepositoryNameAndOwner(
                      repositoryName: formGroup.repositoryName,
                      repositoryOwner: context
                          .read<GlobalStoreChangeNotifier>()
                          .selectedUser,
                    ),
                  );
            } else {
              formGroup.markAllAsTouched();
            }
          },
          child: const Text('Buscar'),
        ),
      );
}
