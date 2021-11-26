import 'package:theaterfy/app/constants/app_constants.dart';
import 'package:theaterfy/core/models/model.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';

class MovieModel extends Movie implements Model<Movie> {
  MovieModel({
    required int id,
    required String title,
    required String overview,
    required int voteCount,
    required double voteAverage,
    required DateTime releaseDate,
    required String? posterUrl,
    required String? backdropUrl,
  }) : super(
          id: id,
          title: title,
          overview: overview,
          voteCount: voteCount,
          voteAverage: voteAverage,
          releaseDate: releaseDate,
          posterUrl: posterUrl,
          backdropUrl: backdropUrl,
        );

  factory MovieModel.fromJson(Map<String, dynamic> jsonMap) {
    return MovieModel(
      id: jsonMap['id'],
      title: jsonMap['title'],
      overview: jsonMap['overview'],
      voteCount: jsonMap['vote_count'],
      voteAverage: _mapAverageToType(jsonMap['vote_average']),
      releaseDate: DateTime.parse(jsonMap['release_date']),
      posterUrl: '${AppConstants.imageBasePath}${jsonMap['poster_path']}',
      backdropUrl: '${AppConstants.imageBasePath}${jsonMap['backdrop_path']}',
    );
  }

  Movie toEntity() {
    return Movie(
      id: id,
      title: title,
      overview: overview,
      voteCount: voteCount,
      voteAverage: voteAverage,
      releaseDate: releaseDate,
      posterUrl: posterUrl,
      backdropUrl: backdropUrl,
    );
  }

  static double _mapAverageToType(dynamic value) {
    if (value.runtimeType == int) {
      return double.parse(value.toString());
    } else {
      return value;
    }
  }
}
