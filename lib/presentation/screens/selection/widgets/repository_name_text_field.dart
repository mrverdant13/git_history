import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../state_management/selection_form_group/form_group.dart';

class RepositoryNameTextField extends StatelessWidget {
  const RepositoryNameTextField();

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Text(
            'Enter the name of a repository owned by the selected GitHub user',
          ),
          ReactiveTextField(
            formControl:
                context.watch<SelectionFormGroup>().repositoryNameTextControl,
            decoration: InputDecoration(
              labelText: 'GitHub repository',
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
