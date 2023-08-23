import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_event.dart';
import 'package:movies/features/movies_list/bloc/movies_state.dart';
import 'package:movies/features/movies_list/use_case/get_movies_list_use_case.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetMoviesListUseCase _getMoviesList;

  MoviesBloc({required GetMoviesListUseCase getMoviesList})
      : _getMoviesList = getMoviesList,
        super(MoviesLoading()) {
    on<MoviesFetchPage>(
      (event, emit) async {
        await state.maybeMap(
          success: (value) async {
            emit(value.copyWith(isLoadingMore: true));
            try {
              final result = await _getMoviesList.execute(event.page);
              emit(value.copyWith(
                currentPage: result.currentPage,
                movies: [...value.movies, ...result.results],
                isLoadingMore: false,
              ));
            } catch (e) {
              emit(MoviesFailure(message: 'Error'));
            }
          },
          orElse: () async {
            emit(MoviesLoading());
            try {
              final result = await _getMoviesList.execute(event.page);
              if (result.results.isEmpty) {
                emit(MoviesEmpty());
              } else {
                emit(MoviesSuccess(
                  totalPages: result.totalPages,
                  currentPage: result.currentPage,
                  movies: result.results,
                ));
              }
            } catch (e) {
              emit(MoviesFailure(message: 'Error'));
            }
          },
        );
      },
    );
  }
}
