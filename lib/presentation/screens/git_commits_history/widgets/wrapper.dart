import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/dependency_injection.dart';
import '../../../../domain/use_cases/get_commits/use_case.dart';
import '../../../../state_management/change_notifier/global_store/global_store_change_notifier.dart';
import '../../../../state_management/cubit/commits_getter/commits_getter_cubit.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
    required this.builder,
    required this.commitsPageNumber,
  }) : super(key: key);

  final WidgetBuilder builder;
  final int commitsPageNumber;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          BlocProvider<CommitsGetterCubit>(
            create: (context) => getIt()
              ..getNextCommitsByRepoAndOwner(
                RepoAndOwnerAndCommitPageNumber(
                  repository: context
                      .read<GlobalStoreChangeNotifier>()
                      .selectedRepository,
                  owner: context.read<GlobalStoreChangeNotifier>().selectedUser,
                  page: commitsPageNumber,
                ),
              ),
          ),
        ],
        builder: (context, child) => builder(context),
      );
}
