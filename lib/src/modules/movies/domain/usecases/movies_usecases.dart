import 'package:dartz/dartz.dart';
import 'package:gen_test/src/modules/movies/infra/repositories/get_movies_repositories.dart';

import '../entity/movies_entity.dart';
abstract class IMoviesUsecases {
  Future<Either<Exception, List<MoviesEntity>>> call();
}

class MoviesUsecases extends IMoviesUsecases {
  final MoviesRepositories repositories;

  MoviesUsecases({required this.repositories});

  @override
  Future<Either<Exception, List<MoviesEntity>>> call() {
    return repositories();
  }
}
