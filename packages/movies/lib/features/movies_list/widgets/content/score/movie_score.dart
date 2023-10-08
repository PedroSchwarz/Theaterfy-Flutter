import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';
import 'package:movies/features/movies_list/widgets/content/score/movie_score_config.dart';

class MovieScore extends StatelessWidget with MovieScoreConfigMixin {
  final double voteAverage;

  const MovieScore({super.key, required this.voteAverage});

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: 1,
            color: theme.colors.core.element.secondary,
            strokeWidth: theme.sizes.border.x600,
          ),
          CircularProgressIndicator(
            value: getScoreValue(voteAverage),
            color: theme.colors.core.status.infoBackground,
            strokeWidth: theme.sizes.border.x600,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              voteAverage.toString(),
              style: theme.typography.h4.copyWith(
                color: theme.colors.core.base.overSecondary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
