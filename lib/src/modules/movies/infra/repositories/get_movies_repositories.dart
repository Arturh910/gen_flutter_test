import 'package:dartz/dartz.dart';
import 'package:gen_test/src/modules/movies/infra/data/get_movies_data.dart';
import '../../domain/entity/movies_entity.dart';
import '../../domain/repositories/get_movies_repositories.dart';


class MoviesRepositories extends IMoviesRepositories {

  final IMoviesData moviesData;

  MoviesRepositories({required this.moviesData});

  @override
  Future<Either<Exception, List<MoviesEntity>>> call() {
    return moviesData();
  }
}
