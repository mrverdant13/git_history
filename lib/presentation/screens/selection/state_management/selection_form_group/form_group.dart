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
          },
        );

  static const _usernameFieldName = 'username';

  FormControl<String> get usernameTextControl =>
      control(_usernameFieldName) as FormControl<String>;

  String get username =>
      usernameTextControl.valid ? usernameTextControl.value ?? '' : '';
}
