class Movie {
  final int id;
  final String title;
  final String overview;
  final int voteCount;
  final double voteAverage;
  final DateTime releaseDate;
  final String? posterUrl;
  final String? backdropUrl;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.voteCount,
    required this.voteAverage,
    required this.releaseDate,
    required this.posterUrl,
    required this.backdropUrl,
  });
}
