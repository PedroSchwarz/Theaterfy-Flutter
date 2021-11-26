import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/core/results/cubit_state.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movies_cubit.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_grid/movies_grid.dart';

class MoviesPage extends StatelessWidget {
  static const String routeName = '/movies';

  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesCubit, CubitState<MoviesCubitState>>(
      builder: (_, CubitState<MoviesCubitState> state) {
        return state.maybeWhen(
          orElse: () => const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (String e) => SliverFillRemaining(
            child: Center(
              child: Text(e),
            ),
          ),
          success: (MoviesCubitState results) => MoviesGrid(
            movies: results.movies,
          ),
        );
      },
    );
  }
}
