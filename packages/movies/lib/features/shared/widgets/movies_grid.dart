import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:movies/features/movies_list/widgets/item/movie_item.dart';
import 'package:movies/features/shared/models/movie_model.dart';

class MoviesGrid extends StatelessWidget {
  final List<MovieModel> movies;
  final int indexOffset;

  const MoviesGrid({super.key, required this.movies, this.indexOffset = 0});

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: theme.sizes.spacing.x300,
        mainAxisSpacing: theme.sizes.spacing.x300,
        childAspectRatio: 0.9,
      ),
      itemCount: movies.length - indexOffset,
      itemBuilder: (_, int index) {
        final position = index + indexOffset;
        final movie = movies[position];
        return MovieItem(
          movie: movie,
          position: index,
        );
      },
    );
  }
}
