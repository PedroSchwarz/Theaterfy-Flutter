import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(createToJson: false)
class MovieModel {
  final int id;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final String title;
  final String overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @JsonKey(name: 'vote_count')
  final int voteCount;

  MovieModel({
    required this.id,
    this.backdropPath,
    required this.title,
    required this.overview,
    this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
