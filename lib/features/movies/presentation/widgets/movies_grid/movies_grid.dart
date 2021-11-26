import 'package:flutter/material.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_grid/movies_grid_item.dart';

class MoviesGrid extends StatelessWidget {
  final List<Movie> movies;

  const MoviesGrid({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 10),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (_, int position) {
            final movie = movies[position];
            return MoviesGridItem(movie: movie);
          },
          childCount: movies.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }
}
