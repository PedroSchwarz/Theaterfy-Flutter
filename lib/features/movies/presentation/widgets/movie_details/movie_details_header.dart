import 'package:flutter/material.dart';
import 'package:theaterfy/app/locales/movie_details_locales.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_image.dart';

class MovieDetailsHeader extends StatelessWidget {
  final String? imageUrl;
  final String? backdropUrl;
  final int heroTag;

  const MovieDetailsHeader({
    Key? key,
    required this.imageUrl,
    required this.backdropUrl,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      floating: true,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: '$heroTag${MovieDetailsLocales.heroImageTag}',
          child: Stack(
            children: [
              PageView(
                physics: const BouncingScrollPhysics(),
                children: [
                  MoviesImage(imageUrl: imageUrl),
                  MoviesImage(imageUrl: backdropUrl),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
