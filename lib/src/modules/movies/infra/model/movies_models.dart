import 'package:equatable/equatable.dart';

import '../../domain/entity/movies_entity.dart';

class MoviesModels extends MoviesEntity with EquatableMixin {
  MoviesModels({
    required super.adult,
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
  });

  factory MoviesModels.fromJson(Map<String, dynamic> json) {
    return MoviesModels(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'].cast<int>(),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  factory MoviesModels.fromEntity(MoviesEntity entity) {
    return MoviesModels(
      adult: entity.adult,
      backdropPath: entity.backdropPath,
      genreIds: entity.genreIds,
      id: entity.id,
      originalLanguage: entity.originalLanguage,
      originalTitle: entity.originalTitle,
      overview: entity.overview,
      popularity: entity.popularity,
      posterPath: entity.posterPath,
      releaseDate: entity.releaseDate,
      title: entity.title,
      video: entity.video,
      voteAverage: entity.voteAverage,
      voteCount: entity.voteCount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  MoviesEntity get toEntity => this;

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}
