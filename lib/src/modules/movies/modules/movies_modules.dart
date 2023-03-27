import 'package:flutter_modular/flutter_modular.dart';
import 'package:gen_test/src/modules/movies/controller/movies_controller.dart';
import 'package:gen_test/src/modules/movies/data/get_movies_data.dart';
import 'package:gen_test/src/modules/movies/infra/repositories/get_movies_repositories.dart';
import 'package:gen_test/src/modules/movies/presentation/movies_screen.dart';

import '../domain/usecases/movies_usecases.dart';



class MoviesModules extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<MoviesData>(
      (i) => MoviesData(),
    ),
    Bind.lazySingleton<MoviesRepositories>(
      (i) => MoviesRepositories(
        moviesData: i.get<MoviesData>(),
      ),
    ),
    Bind.lazySingleton<MoviesUsecases>(
      (i) => MoviesUsecases(
        repositories: i.get<MoviesRepositories>(), 
      ),
    ),
    Bind.lazySingleton<MoviesController>(
      (i) => MoviesController(
        usecase: i.get<MoviesUsecases>(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const MoviesScreen()),
  ];
}
