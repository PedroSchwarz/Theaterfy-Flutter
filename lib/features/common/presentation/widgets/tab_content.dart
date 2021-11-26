import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/features/common/presentation/cubits/tab_cubit.dart';
import 'package:theaterfy/features/movies/presentation/pages/movies_page.dart';

class TabContent extends StatelessWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TabCubit>();

    switch (cubit.state.currentTab) {
      case Tabs.nowPlaying:
        return const MoviesPage();
      case Tabs.search:
        return const SliverFillRemaining(
          child: Text('Sear'),
        );
      case Tabs.favorites:
        return const SliverFillRemaining(
          child: Text('Fav'),
        );
    }
  }
}
