import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../l10n/l10n.dart';
import '../state_management/selection_form_group/form_group.dart';

class RepositoryNameTextField extends StatelessWidget {
  const RepositoryNameTextField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Text(l10n.repositorySearchInstructions),
        ReactiveTextField(
          formControl:
              context.watch<SelectionFormGroup>().repositoryNameTextControl,
          decoration: InputDecoration(
            labelText: l10n.repositoryNameFieldLabel,
            prefixIcon: const Icon(
              Icons.inventory,
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context
                  .read<SelectionFormGroup>()
                  .repositoryNameTextControl
                  .reset(),
            ),
          ),
        ),
      ],
    );
  }
}
