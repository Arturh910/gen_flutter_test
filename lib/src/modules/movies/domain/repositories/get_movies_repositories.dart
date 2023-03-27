import 'package:dartz/dartz.dart';
import '../entity/movies_entity.dart';

abstract class IMoviesRepositories {
  Future<Either<Exception, List<MoviesEntity>>> call();
}
