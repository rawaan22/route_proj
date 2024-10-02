class Movie {
  final int? id;
  final String title;
  final String backDropPath;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  Movie(
      {required this.releaseDate,
      required this.voteAverage,
      required this.id,
      required this.title,
      required this.backDropPath,
      required this.overview,
      required this.posterPath});

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'],
      title: map['title'],
      backDropPath: map['backdrop_path'],
      overview: map['overview'],
      posterPath: map['poster_path'],
      releaseDate: map['release_date'],
      voteAverage: map['vote_average'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'backDropPath': backDropPath,
      'overview': overview,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'voteAverage': voteAverage
    };
  }
}
