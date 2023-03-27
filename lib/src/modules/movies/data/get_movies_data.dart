import 'package:dartz/dartz.dart';
import 'package:gen_test/src/modules/movies/infra/data/get_movies_data.dart';
import '../../../utils/load_from_json.dart';
import '../domain/entity/movies_entity.dart';
import '../infra/model/movies_models.dart';


class MoviesData extends IMoviesData {

  @override
  Future<Either<Exception, List<MoviesEntity>>> call() async {
    final items = await LoadFromJson.fromAsset('assets/movies_mock.json');
    await Future.delayed(const Duration(seconds: 1));
    return items.fold((l) => Left(l), (r) {
      try {
        return Right(
          (r['mcu'] as List)
              .map((e) => MoviesModels.fromJson(e))
              .toList(),
        );
      } catch (e) {
        return Left(Exception(e));
      }
    });
  }
}