import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';
import 'package:movies/features/movies_list/widgets/item/featured_movie.dart';
import 'package:movies/features/movies_list/widgets/item/movie_item.dart';

class MoviesGrid extends StatelessWidget {
  final List<MovieModel> movies;

  const MoviesGrid({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;
    final controller = ScrollController();

    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          expandedHeight: 100,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Now Playing'),
            centerTitle: false,
            titlePadding: EdgeInsets.all(theme.sizes.spacing.x400),
          ),
        ),
        SliverToBoxAdapter(
          child: FeaturedMovie(
            movie: movies.first,
            controller: controller,
          ),
        ),
        SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: theme.sizes.spacing.x300,
            mainAxisSpacing: theme.sizes.spacing.x300,
            childAspectRatio: 0.9,
          ),
          itemCount: movies.length - 1,
          itemBuilder: (_, int index) {
            final position = index + 1;
            final movie = movies[position];
            return MovieItem(
              movie: movie,
              position: position,
            );
          },
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: theme.sizes.spacing.x800),
        ),
      ],
    );
  }
}
