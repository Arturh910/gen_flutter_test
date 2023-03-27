import 'package:flutter_modular/flutter_modular.dart';
import '../movies/modules/movies_modules.dart';


class AppModules extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: MoviesModules()),
  ];
}
