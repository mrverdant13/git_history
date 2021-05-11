import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../state_management/selection_form_group/form_group.dart';
import 'username_text_field.dart';
import 'users_search_button.dart';

class SelectionForm extends StatelessWidget {
  const SelectionForm();

  @override
  Widget build(BuildContext context) => ReactiveForm(
        formGroup: context.watch<SelectionFormGroup>(),
        child: Column(
          children: const [
            UsernameTextField(),
            UsersSearchButton(),
          ],
        ),
      );
}
