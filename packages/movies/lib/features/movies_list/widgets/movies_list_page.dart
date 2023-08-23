import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_event.dart';
import 'package:movies/features/movies_list/bloc/movies_state.dart';
import 'package:movies/features/movies_list/widgets/grid/movies_grid.dart';

class MoviesListPage extends StatelessWidget {
  const MoviesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<MoviesBloc>(context);

    return AppScaffold(
      child: BlocBuilder(
        bloc: bloc,
        builder: (_, MoviesState state) {
          return state.map(
            loading: (_) => const AppLoader(),
            success: (value) => MoviesGrid(
              movies: value.movies,
              onRefresh: () async {
                bloc.add(MoviesFetchPage(1));
              },
              onNextPage: () async {
                bloc.add(MoviesFetchPage(value.currentPage + 1));
              },
            ),
            empty: (_) => const Center(child: Text('Empty list')),
            failure: (value) => AppErrorView(
              message: value.message,
              icon: Icons.refresh,
              onIconPressed: () => bloc.add(MoviesFetchPage(1)),
            ),
          );
        },
      ),
    );
  }
}
