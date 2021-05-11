import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../state_management/selection_form_group/form_group.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField();

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Text(
            'Enter a GitHub username and select the desired user',
          ),
          ReactiveTextField(
            formControl:
                context.watch<SelectionFormGroup>().usernameTextControl,
            decoration: InputDecoration(
              labelText: 'GitHub username',
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
