import 'package:cinema_lab/models/search_film.dart';
import 'package:dio/dio.dart';

class SearchFilmService {
  final dio = Dio();

  String apiKey = 'tsY_UPLbyfFitorbjr28IlTlIi8EjNYlYB7E8uZ1CgM';
  Future<SearchFilmModel> searchFilm(String name) async {
    Response response = await dio.get(
      'https://xmdbapi.com/api/v1/search?apiKey=$apiKey&q=$name&limit=1',
    );

    // 2+3+4 become on step because factory constructor in the model that convert json to model
    SearchFilmModel searchFilm = SearchFilmModel.fromJson(response.data);
    return searchFilm;
  }
}
