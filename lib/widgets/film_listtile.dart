import 'package:cinema_lab/models/search_film.dart';
import 'package:flutter/material.dart';

class FilmListtile extends StatelessWidget {
  const FilmListtile({super.key, required this.film});

  final SearchFilmModel film;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1.6,
        child: Image.network(film.imageUrl, fit: BoxFit.fill),
      ),
      title: Text(film.name),
      subtitle: Text(
        film.description,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(film.year.toString()),
    );
  }
}
