import 'package:reactive_forms/reactive_forms.dart';

class SelectionFormGroup extends FormGroup {
  SelectionFormGroup()
      : super(
          {
            _usernameFieldName: FormControl<String>(
              validators: [
                Validators.required,
              ],
            ),
            _repositoryNameFieldName: FormControl<String>(
              validators: [
                Validators.required,
              ],
              disabled: true,
            ),
          },
        );

  static const _usernameFieldName = 'username';
  static const _repositoryNameFieldName = 'repository_name';

  FormControl<String> get usernameTextControl =>
      control(_usernameFieldName) as FormControl<String>;

  FormControl<String> get repositoryNameTextControl =>
      control(_repositoryNameFieldName) as FormControl<String>;

  String get username =>
      usernameTextControl.valid ? usernameTextControl.value ?? '' : '';

  String get repositoryName => repositoryNameTextControl.valid
      ? repositoryNameTextControl.value ?? ''
      : '';
}
