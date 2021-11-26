import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/core/results/cubit_state.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/domain/usecases/get_movies.dart';

class MoviesCubit extends Cubit<CubitState<MoviesCubitState>> {
  final GetMovies getMovies;
  final scrollController = ScrollController();

  MoviesCubit({required this.getMovies}) : super(Initial(MoviesCubitState()));

  callGetMovies() async {
    final res = await state.maybeWhen(
      orElse: () async {
        emit(const Loading());
        return await getMovies(GetMoviesParams(page: 1));
      },
      success: (data) async => await getMovies(GetMoviesParams(
        page: data.currentPage,
      )),
    );

    res.fold(
      (failure) => emit(const Error('Ops')),
      (result) {
        state.maybeWhen(
          orElse: () {
            emit(Success(
              MoviesCubitState(currentPage: 2, movies: result),
            ));
          },
          success: (data) {
            emit(Success(
              data.copyWith(
                currentPage: data.currentPage + 1,
                movies: [...data.movies, ...result],
              ),
            ));
          },
        );
      },
    );
  }

  bool listenGridScroll({
    required ScrollNotification notification,
  }) {
    if (notification is ScrollEndNotification &&
        scrollController.position.extentAfter <= 0) {
      callGetMovies();
    }
    return false;
  }
}

class MoviesCubitState {
  final int currentPage;
  final List<Movie> movies;

  MoviesCubitState({
    this.currentPage = 1,
    this.movies = const [],
  });

  MoviesCubitState copyWith({
    int? currentPage,
    List<Movie>? movies,
  }) {
    return MoviesCubitState(
      currentPage: currentPage ?? this.currentPage,
      movies: movies ?? this.movies,
    );
  }
}
