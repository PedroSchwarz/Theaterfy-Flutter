import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/di/containers.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movie_details_cubit.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movie_details/movie_details_body.dart';
import 'package:theaterfy/features/movies/presentation/widgets/movie_details/movie_details_header.dart';

class MovieDetailsPage extends StatelessWidget {
  static const String routeName = '/movie-details';
  final Movie movie;

  const MovieDetailsPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<MovieDetailsCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              MovieDetailsHeader(
                imageUrl: movie.posterUrl,
                backdropUrl: movie.backdropUrl,
                heroTag: movie.id,
              ),
              MovieDetailsBody(movie: movie),
            ],
          ),
        ),
      ),
    );
  }
}
