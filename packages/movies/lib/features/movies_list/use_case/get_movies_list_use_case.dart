import 'package:core_shared/network/network_client.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';
import 'package:movies/features/shared/models/pagination_response.dart';

class GetMoviesListUseCase {
  final NetworkClient _client;

  GetMoviesListUseCase({required NetworkClient client}) : _client = client;

  Future<PaginationResponse<MovieModel>> execute(int page) async {
    final response = await _client.get(
      '/movie/now_playing',
      queryParameters: {'page': page},
    );
    return PaginationResponse.fromJson(
      response,
      (json) => MovieModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
