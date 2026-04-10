import 'package:cinema_lab/models/search_film.dart';
import 'package:flutter/material.dart';

class FilmListtile extends StatelessWidget {
  const FilmListtile({super.key, required this.film});

  final SearchFilmModel film;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color.fromARGB(179, 196, 196, 196),
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 101, 181, 247),
      ),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1.6,
          child: Image.network(film.imageUrl, fit: BoxFit.fill),
        ),
        title: Text(film.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          film.description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          film.year.toString(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
