import 'package:theaterfy/core/models/model.dart';
import 'package:theaterfy/features/movies/data/models/movie_model.dart';
import 'package:theaterfy/features/movies/domain/entities/pagination.dart';

class GetMoviesModel extends Pagination<MovieModel>
    implements Model<Pagination> {
  GetMoviesModel({
    required List<MovieModel> results,
  }) : super(results: results);

  factory GetMoviesModel.fromJson(Map<String, dynamic> jsonMap) {
    final content = (jsonMap['results'] as List<dynamic>)
        .map((e) => MovieModel.fromJson(e))
        .toList();
    return GetMoviesModel(
      results: content,
    );
  }
}
