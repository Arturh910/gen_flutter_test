import 'package:gen_test/src/modules/movies/domain/entity/movies_entity.dart';
import 'package:gen_test/src/modules/movies/domain/usecases/movies_usecases.dart';
import 'package:flutter_triple/flutter_triple.dart';

class MoviesController extends Store<List<MoviesEntity>> {
  final IMoviesUsecases usecase;

  MoviesController({required this.usecase}) : super([]);

  Future<void> getMovies() async {
   setLoading(true);
    await usecase().then((value) {
      value.fold((l) => setError(l), (r) => update(r));
    }).whenComplete(() => setLoading(false));
  }
}
