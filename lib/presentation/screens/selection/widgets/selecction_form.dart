import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../state_management/selection_form_group/form_group.dart';
import 'repositories_list.dart';
import 'repositories_search_button.dart';
import 'repository_name_text_field.dart';
import 'username_text_field.dart';
import 'users_list.dart';
import 'users_search_button.dart';

class SelectionForm extends StatelessWidget {
  const SelectionForm();

  @override
  Widget build(BuildContext context) {
    final formGroup = context.watch<SelectionFormGroup>();
    return ReactiveForm(
      onWillPop: () async {
        if (formGroup.usernameTextControl.enabled) {
          return true;
        } else if (formGroup.repositoryNameTextControl.enabled) {
          formGroup.usernameTextControl.markAsEnabled();
          formGroup.repositoryNameTextControl.markAsDisabled();
        }
        return false;
      },
      formGroup: formGroup,
      child: Column(
        children: [
          ReactiveFormField(
            formControl: formGroup.usernameTextControl,
            builder: (field) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => SizeTransition(
                axisAlignment: -1.0,
                sizeFactor: animation,
                child: child,
              ),
              child: field.control.enabled
                  ? Column(
                      children: const [
                        UsernameTextField(),
                        UsersSearchButton(),
                        UsersList(),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          ReactiveFormField(
            formControl: formGroup.repositoryNameTextControl,
            builder: (field) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => SizeTransition(
                axisAlignment: -1.0,
                sizeFactor: animation,
                child: child,
              ),
              child: field.control.enabled
                  ? Column(
                      children: const [
                        RepositoryNameTextField(),
                        RepositoriesSearchButton(),
                        RepositoriesList(),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
