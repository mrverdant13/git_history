import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/dependency_injection.dart';
import '../../../../state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import '../../../../state_management/cubit/users_getter/users_getter_cubit.dart';
import '../state_management/selection_form_group/form_group.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider(
            create: (_) => SelectionFormGroup(),
          ),
          BlocProvider<UsersGetterCubit>(
            create: (context) => getIt(),
          ),
          BlocProvider<RepositoriesGetterCubit>(
            create: (context) => getIt(),
          ),
        ],
        builder: (context, child) => builder(context),
      );
}
