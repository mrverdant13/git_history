import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../l10n/l10n.dart';
import '../state_management/selection_form_group/form_group.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Text(l10n.userSearchInstructions),
        ReactiveTextField(
          formControl: context.watch<SelectionFormGroup>().usernameTextControl,
          decoration: InputDecoration(
            labelText: l10n.usernameFieldLabel,
            prefixIcon: const Icon(
              Icons.person_outline,
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => context
                  .read<SelectionFormGroup>()
                  .usernameTextControl
                  .reset(),
            ),
          ),
        ),
      ],
    );
  }
}
