import 'package:flutter/material.dart';
import '../../domain/entity/movies_entity.dart';

class CardWidget extends StatelessWidget {
  final MoviesEntity entity;
  final String urlImage =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/';

  const CardWidget({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ExpansionTile(
          title: Text(
            entity.title,
          ),
          children: [
            Column(
              children: [
                Image.network(
                  '$urlImage${entity.posterPath}',
                  width: 180,
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    entity.overview,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color:
                            entity.voteAverage < 7 ? Colors.red : Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child:
                          Center(child: Text(entity.voteAverage.toString()))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
