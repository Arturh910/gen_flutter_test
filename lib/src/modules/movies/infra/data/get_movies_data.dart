import 'package:dartz/dartz.dart' show Either;
import '../../domain/entity/movies_entity.dart';



abstract class IMoviesData {
  Future<Either<Exception, List<MoviesEntity>>> call();
}
