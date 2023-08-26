import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:movies/features/movies_list/widgets/content/movie_background.dart';
import 'package:movies/features/movies_list/widgets/content/movie_content.dart';
import 'package:movies/features/movies_list/widgets/content/movie_item_gradient.dart';
import 'package:movies/features/shared/models/movie_model.dart';

class FeaturedMovie extends StatefulWidget {
  final MovieModel movie;
  final ScrollController controller;

  const FeaturedMovie({
    super.key,
    required this.movie,
    required this.controller,
  });

  @override
  State<FeaturedMovie> createState() => _FeaturedMovieState();
}

class _FeaturedMovieState extends State<FeaturedMovie> {
  final GlobalKey backgroundImageKey = GlobalKey();
  double blurRadius = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        blurRadius = (widget.controller.position.pixels / 100);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return SizedBox(
      height: 350,
      child: Flow(
        delegate: ScaleFlowDelegate(
          scrollable: Scrollable.of(context),
          listItemContext: context,
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            height: 300,
            margin: EdgeInsets.symmetric(vertical: theme.sizes.spacing.x300),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(theme.sizes.radius.x200),
              child: Stack(
                children: [
                  MovieBackground(
                    url: widget.movie.posterPath!,
                    size: RemoteImageSize.large,
                  ),
                  const MovieItemGradient(),
                  MovieContent(
                    title: widget.movie.title,
                    overview: widget.movie.overview,
                    isFeatured: true,
                    votes: widget.movie.voteAverage,
                  ),
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: blurRadius,
                        sigmaY: blurRadius,
                      ),
                      child: Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
