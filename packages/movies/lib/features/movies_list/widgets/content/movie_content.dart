import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:movies/features/movies_list/widgets/content/score/movie_score.dart';

class MovieContent extends StatelessWidget {
  final String title;
  final String overview;
  final double? votes;
  final bool isFeatured;

  const MovieContent({
    super.key,
    required this.title,
    required this.overview,
    this.votes,
    this.isFeatured = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return Positioned(
      bottom: theme.sizes.spacing.x400,
      left: theme.sizes.spacing.x400,
      right: theme.sizes.spacing.x400,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: isFeatured ? theme.typography.h2 : theme.typography.h4,
                ),
                SizedBox(height: theme.sizes.spacing.x400),
                Text(
                  overview,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.typography.p4.copyWith(
                    color: theme.colors.core.text.secondary,
                  ),
                ),
              ],
            ),
          ),
          if (votes != null) ...[
            SizedBox(width: theme.sizes.spacing.x400),
            MovieScore(voteAverage: votes!),
          ],
        ],
      ),
    );
  }
}
