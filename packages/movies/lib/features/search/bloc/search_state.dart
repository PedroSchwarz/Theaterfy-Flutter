import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/features/shared/models/movie_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState.loading() = SearchLoading;
  factory SearchState.success({
    required int totalPages,
    required int currentPage,
    required List<MovieModel> movies,
    @Default(false) bool isLoadingMore,
    @Default('') String query,
  }) = SearchSuccess;
  factory SearchState.empty() = SearchEmpty;
  factory SearchState.failure({required String message}) = SearchFailure;
}
