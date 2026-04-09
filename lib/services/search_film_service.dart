import 'package:cinema_lab/models/search_film.dart';
import 'package:dio/dio.dart';

class SearchFilmService {
  final dio = Dio();

  String apiKey = 'tsY_UPLbyfFitorbjr28IlTlIi8EjNYlYB7E8uZ1CgM';
  Future<SearchFilmModel> searchFilm(String name) async {
    Response response = await dio.get(
      'https://xmdbapi.com/api/v1/search?apiKey=$apiKey&q=$name&limit=1',
    );
    print('API Response: ${response.data}');

    // / 2+3+4 become on step because factory constructor in the model that convert json to model

    //     SearchFilmModel searchFilm = SearchFilmModel.fromJson(response.data);

    //     return searchFilm;

    // }

    // 2 all data
    Map<String, dynamic> jsonData = response.data;

    // 3 only data i want
    List<dynamic> films = jsonData['results'];

    // 4 convert data to list of SearchFilmModel
    // { [ in api   return list if i dont take all list i should take one to apper it
    var film =
        films[0]; // Get the first film from the results ..........................
    return SearchFilmModel(
      name: film['name'] ?? 'Unknown Name',
      imageUrl: film['image'] ?? '',
      rank: film['rank']?.toString() ?? '0',
      description: film['description'] ?? '',
      year: film['year']?.toString() ?? '',
    );
  }
}
