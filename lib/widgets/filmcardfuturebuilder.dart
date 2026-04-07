import 'package:cinema_lab/models/film_card.dart';
import 'package:cinema_lab/services/film_trending_service.dart';
import 'package:cinema_lab/widgets/gridviewforfilmcard.dart';
import 'package:flutter/material.dart';

class Filmcardfuturebuilder extends StatefulWidget {
  const Filmcardfuturebuilder({super.key});

  @override
  State<Filmcardfuturebuilder> createState() => _FilmcardfuturebuilderState();
}

class _FilmcardfuturebuilderState extends State<Filmcardfuturebuilder> {
  var future;
  @override
  void initState() {
    future = FilmTrendingService().fetchTrendingFilms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FilmCardModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridViewFilmCard(films: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
