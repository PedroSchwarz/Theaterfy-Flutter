import 'package:flutter/material.dart';
import 'package:theaterfy/app/locales/movie_details_locales.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movies_score.dart';

class MovieDetailsScore extends StatelessWidget {
  final double votes;
  final int votesCount;

  const MovieDetailsScore({
    Key? key,
    required this.votes,
    required this.votesCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MoviesScore(
          votes: votes,
          size: 100,
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              MovieDetailsLocales.ratedBy,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 5),
            Text(
              '$votesCount ${MovieDetailsLocales.users}',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
