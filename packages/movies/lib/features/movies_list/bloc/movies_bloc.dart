import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_event.dart';
import 'package:movies/features/movies_list/bloc/movies_state.dart';
import 'package:movies/features/movies_list/use_case/get_movies_list_use_case.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetMoviesListUseCase _getMoviesList;

  MoviesBloc({required GetMoviesListUseCase getMoviesList})
      : _getMoviesList = getMoviesList,
        super(MoviesLoading()) {
    on<MoviesStarted>(
      (event, emit) async {
        await _makeRequest(
          1,
          successCallback: (totalPages, currentPage, movies) {
            emit(
              MoviesSuccess(
                totalPages: totalPages,
                currentPage: currentPage,
                movies: movies,
              ),
            );
          },
          emptyCallback: () {
            emit(MoviesEmpty());
          },
          failureCallback: (message) {
            emit(MoviesFailure(message: message));
          },
        );
      },
    );
    on<MoviesNextPage>((event, emit) async {
      await _makeRequest(
        event.page,
        successCallback: (totalPages, currentPage, movies) {
          emit(
            MoviesSuccess(
              totalPages: totalPages,
              currentPage: currentPage,
              movies: movies,
            ),
          );
        },
        emptyCallback: () {
          emit(MoviesEmpty());
        },
        failureCallback: (message) {
          emit(MoviesFailure(message: message));
        },
      );
    });
  }

  Future<void> _makeRequest(
    int page, {
    required Function(int, int, List<MovieModel>) successCallback,
    required Function emptyCallback,
    required Function(String) failureCallback,
  }) async {
    try {
      final result = await _getMoviesList.execute(page);
      if (result.results.isEmpty) {
        emptyCallback();
      } else {
        successCallback(result.totalPages, result.currentPage, result.results);
      }
    } catch (e) {
      failureCallback('Error');
    }
  }
}
