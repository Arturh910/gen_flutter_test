import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:gen_test/src/modules/movies/controller/movies_controller.dart';
import 'package:gen_test/src/modules/movies/presentation/widgets/card_widget.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({
    Key? key,
  }) : super(key: key);

  @override
  createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  final controller = Modular.get<MoviesController>();

  @override
  void initState() {
    super.initState();
    controller.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Marvel Movies',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        body: Scaffold(
          body: ListView.builder(
          itemCount: controller.state.length,
          itemBuilder: (BuildContext context, int index) {
            return CardWidget(entity: controller.state[index],);
              
          }),
        ));
  }
}
