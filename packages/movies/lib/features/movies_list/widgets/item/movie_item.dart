import 'package:flutter/material.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';
import 'package:alaska/alaska.dart';
import 'package:movies/features/movies_list/widgets/content/movie_background.dart';
import 'package:movies/features/movies_list/widgets/content/movie_content.dart';
import 'package:movies/features/movies_list/widgets/content/movie_item_gradient.dart';

class MovieItem extends StatelessWidget {
  final MovieModel movie;
  final int position;
  final GlobalKey backgroundImageKey = GlobalKey();

  MovieItem({
    super.key,
    required this.movie,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return Padding(
      padding: EdgeInsets.only(
        left: position % 2 == 0 ? 0 : theme.sizes.spacing.x300,
        right: position % 2 == 1 ? 0 : theme.sizes.spacing.x300,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(theme.sizes.radius.x200),
        child: Stack(
          children: [
            MovieBackground(
              url: movie.posterPath!,
              size: RemoteImageSize.small,
            ),
            const MovieItemGradient(),
            MovieContent(
              title: movie.title,
              overview: movie.overview,
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
