import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  factory MoviesState.loading() = MoviesLoading;
  factory MoviesState.success({
    required int totalPages,
    required int currentPage,
    required List<MovieModel> movies,
  }) = MoviesSuccess;
  factory MoviesState.empty() = MoviesEmpty;
  factory MoviesState.failure({required String message}) = MoviesFailure;
}
