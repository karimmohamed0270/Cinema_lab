import 'package:cinema_lab/models/film_card.dart';
import 'package:dio/dio.dart';

class FilmTrendingService {
  String apiKey = 'tsY_UPLbyfFitorbjr28IlTlIi8EjNYlYB7E8uZ1CgM';
  final dio = Dio();

  FilmTrendingService();

  Future<List<FilmCardModel>> fetchTrendingFilms() async {
    //  1 key
    Response response = await dio.get(
      'https://xmdbapi.com/api/v1/trending?apiKey=tsY_UPLbyfFitorbjr28IlTlIi8EjNYlYB7E8uZ1CgM&count=50',
    );

    // 2 all data
    Map<String, dynamic> jsonData = response.data;

    // 3 only data i want
    List<dynamic> films = jsonData['results'];

    // 4 convert data to list of FilmCardModel
    List<FilmCardModel> filmCards = films.map((film) {
      return FilmCardModel(
        imageUrl: film['poster_url'],
        title: film['title'],
        rating: (film['rating']),
      );
    }).toList();

    //  list that contains all the film cards that i will use in the app
    return filmCards;
  }
}
