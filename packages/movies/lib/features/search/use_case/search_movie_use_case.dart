import 'package:core_shared/network/network_client.dart';
import 'package:movies/features/shared/models/movie_model.dart';
import 'package:movies/features/shared/responses/pagination_response.dart';

class SearchMovieUseCase {
  final NetworkClient _client;

  SearchMovieUseCase({required NetworkClient client}) : _client = client;

  Future<PaginationResponse<MovieModel>> execute({
    required int page,
    required String query,
  }) async {
    final response = await _client.get('/search/movie', queryParameters: {
      'page': page,
      'query': query,
    });
    return PaginationResponse.fromJson(
      response,
      (json) => MovieModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
