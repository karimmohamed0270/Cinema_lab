import 'package:cinema_lab/models/film_card.dart';
import 'package:cinema_lab/widgets/film_card.dart';
import 'package:flutter/material.dart';

class GridViewFilmCard extends StatelessWidget {
  const GridViewFilmCard({super.key, required this.films});
  final List<FilmCardModel> films;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: films.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        //  to make the cards taller
        childAspectRatio: 0.6,
        // vertical space
      ),
      itemBuilder: (context, index) {
        return FilmCard(film: films[index]);
      },
    );
  }
}
