import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../l10n/l10n.dart';
import '../../../../state_management/cubit/users_getter/users_getter_cubit.dart';
import '../state_management/selection_form_group/form_group.dart';

class UsersSearchButton extends StatelessWidget {
  const UsersSearchButton();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocListener<UsersGetterCubit, UsersGetterState>(
      listener: (context, usersGetterState) => usersGetterState.maybeWhen(
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
      ),
      child: ElevatedButton(
        onPressed: () {
          final selectionFormGroup = context.read<SelectionFormGroup>();

          selectionFormGroup.unfocus();

          if (selectionFormGroup.valid) {
            context.read<UsersGetterCubit>().getUsersByUsername(
                  selectionFormGroup.username,
                );
          } else {
            selectionFormGroup.markAllAsTouched();
          }
        },
        child: Text(l10n.searchButtonLabel),
      ),
    );
  }
}
