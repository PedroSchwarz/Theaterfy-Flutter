import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/search/bloc/search_event.dart';
import 'package:movies/features/search/bloc/search_state.dart';
import 'package:movies/features/search/use_case/search_movie_use_case.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMovieUseCase _searchMovie;

  SearchBloc({required SearchMovieUseCase searchMovie})
      : _searchMovie = searchMovie,
        super(SearchEmpty()) {
    on<SearchQueried>((event, emit) async {
      emit(SearchLoading());
      try {
        final result = await _searchMovie.execute(page: 1, query: event.query);
        if (result.results.isEmpty) {
          emit(SearchEmpty());
        } else {
          emit(SearchSuccess(
            totalPages: result.totalPages,
            currentPage: result.currentPage,
            movies: result.results,
            query: event.query,
          ));
        }
      } catch (e) {
        emit(SearchFailure(message: 'Error'));
      }
    });
    on<SearchNextPage>(
      (event, emit) async {
        await state.mapOrNull(
          success: (value) async {
            emit(value.copyWith(isLoadingMore: true));
            try {
              final result = await _searchMovie.execute(
                page: event.page,
                query: value.query,
              );
              emit(value.copyWith(
                currentPage: result.currentPage,
                movies: [...value.movies, ...result.results],
                isLoadingMore: false,
              ));
            } catch (e) {
              emit(SearchFailure(message: 'Error'));
            }
          },
        );
      },
    );
  }
}
