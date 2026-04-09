import 'package:cinema_lab/models/search_film.dart';

class FilmState {}

//  state 1
class NoFilmState extends FilmState {}

//  state 2

class LoadedFilmState extends FilmState {
  // you can add film data here as properties
  // so i will use filmmodel here

  LoadedFilmState({required this.filmModel});
  final SearchFilmModel filmModel;
}

//  state 3

class FailureFilmState extends FilmState {}
