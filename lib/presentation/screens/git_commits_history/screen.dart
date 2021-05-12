import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../state_management/cubit/commits_getter/commits_getter_cubit.dart';
import '../../routers/app_router.gr.dart';
import 'widgets/wrapper.dart';

class GitCommitHistoryScreen extends StatelessWidget {
  const GitCommitHistoryScreen({
    this.commitsPageNumber = 1,
  });

  final int commitsPageNumber;

  @override
  Widget build(BuildContext context) => Wrapper(
        commitsPageNumber: commitsPageNumber,
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Commit History ($commitsPageNumber)',
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.router.pop();
              },
            ),
            actions: [
              BlocBuilder<CommitsGetterCubit, CommitsGetterState>(
                builder: (context, commitsGetterState) =>
                    commitsGetterState.maybeWhen(
                  done: (commitsPage) => commitsPage.nextPage == null
                      ? const SizedBox.shrink()
                      : IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            context.router.push(
                              GitCommitHistoryScreenRoute(
                                commitsPageNumber: commitsPageNumber + 1,
                              ),
                            );
                          },
                        ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ],
          ),
          body: BlocBuilder<CommitsGetterCubit, CommitsGetterState>(
            builder: (context, commitsGetterState) =>
                commitsGetterState.maybeWhen(
              done: (commitsPage) => commitsPage.commits.isEmpty()
                  ? const Center(
                      child: Text('No commits found'),
                    )
                  : ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: commitsPage.commits.size,
                      itemBuilder: (context, index) {
                        final commitMsg =
                            commitsPage.commits.iter.elementAt(index).message;

                        final commitMsgs = commitMsg.split('\n');
                        final mainCommitMsg = commitMsgs.first;
                        final additionalCommitMsgs = commitMsgs.skip(1);

                        final commitSha =
                            commitsPage.commits.iter.elementAt(index).sha;

                        return ExpansionTile(
                          title: Text(mainCommitMsg),
                          subtitle: Text(commitSha),
                          children: [
                            ...additionalCommitMsgs.map(
                              (additionalCommitMsg) =>
                                  Text(additionalCommitMsg),
                            ),
                          ],
                        );
                      },
                    ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      );
}
