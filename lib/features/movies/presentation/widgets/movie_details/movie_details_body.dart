import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/app/locales/movie_details_locales.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movie_details_cubit.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movie_details/movie_details_score.dart';

class MovieDetailsBody extends StatelessWidget {
  final Movie movie;

  const MovieDetailsBody({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesCubit = context.read<MovieDetailsCubit>();

    return SliverFillRemaining(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                movie.overview,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(MovieDetailsLocales.releasedOn),
                  Text(
                    moviesCubit.formatReleaseDate(
                      movie.releaseDate,
                    ),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MovieDetailsScore(
                votes: movie.voteAverage,
                votesCount: movie.voteCount,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
