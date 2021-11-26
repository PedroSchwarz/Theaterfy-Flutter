import 'package:flutter/material.dart';
import 'package:theaterfy/app/locales/movie_details_locales.dart';
import 'package:theaterfy/app/routes/routes_service.dart';
import 'package:theaterfy/di/containers.dart';
import 'package:theaterfy/features/common/presentation/widgets/clickable_container.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/presentation/pages/movie_details_page.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_grid/movies_grid_item_dark_overlay.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_image.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_grid/movies_grid_item_info.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_score.dart';

class MoviesGridItem extends StatelessWidget {
  final Movie movie;
  final routesService = sl<RoutesService>();

  MoviesGridItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: '${movie.id}${MovieDetailsLocales.heroImageTag}',
            child: MoviesImage(imageUrl: movie.posterUrl),
          ),
          ClickableContainer(
            child: const MoviesGridItemDarkOverlay(),
            action: () => routesService.to(MovieDetailsPage.routeName, movie),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MoviesGridItemInfo(
                    info: movie.title,
                    infoType: MoviesGridItemInfoType.title,
                  ),
                  const SizedBox(height: 10),
                  MoviesGridItemInfo(
                    info: movie.overview,
                    infoType: MoviesGridItemInfoType.overview,
                  ),
                  const SizedBox(height: 10),
                  MoviesScore(
                    votes: movie.voteAverage,
                    size: 50,
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
