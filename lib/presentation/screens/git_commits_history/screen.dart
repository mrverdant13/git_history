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
                  : RefreshIndicator(
                      onRefresh: () async {
                        await context.read<CommitsGetterCubit>().refreshPage();
                      },
                      child: ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: commitsPage.commits.size,
                        itemBuilder: (context, index) {
                          final commit =
                              commitsPage.commits.iter.elementAt(index);
                          final commitMsg = commit.message;

                          final commitMsgs = commitMsg.split('\n\n');
                          final mainCommitMsg = commitMsgs.first;
                          final additionalCommitMsgs = commitMsgs.skip(1);

                          final commitSha =
                              commitsPage.commits.iter.elementAt(index).sha;

                          return Builder(
                            key: ValueKey(commit.sha),
                            builder: (context) => additionalCommitMsgs.isEmpty
                                ? ListTile(
                                    title: Text(mainCommitMsg),
                                    subtitle: Text(commitSha),
                                  )
                                : ExpansionTile(
                                    title: Text(mainCommitMsg),
                                    subtitle: Text(commitSha),
                                    expandedAlignment: Alignment.centerLeft,
                                    expandedCrossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ...additionalCommitMsgs.map(
                                        (additionalCommitMsg) =>
                                            Text(additionalCommitMsg),
                                      ),
                                    ],
                                  ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                      ),
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
