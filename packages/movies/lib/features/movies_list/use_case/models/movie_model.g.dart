// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );
