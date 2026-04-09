import 'package:cinema_lab/get_film_cubit/get_film_cubit_states.dart';
import 'package:cinema_lab/models/search_film.dart';
import 'package:cinema_lab/services/search_film_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetFilmCubit extends Cubit<FilmState> {
  GetFilmCubit() : super(NoFilmState());

  //  step 3 create fun to fetch film data from api
  // and emit the states according to the result of the api call

  getfilm({required String filmName}) async {
    //  step 7 pass data to the loaded state to use it in the ui
    final SearchFilmModel filmModel;

    try {
      // here you will call the api to get the film data
      // and then emit the LoadedFilmState with the film data

      filmModel = await SearchFilmService().searchFilm(filmName);
      emit(LoadedFilmState(filmModel: filmModel));
    } on Exception catch (e) {
      emit(FailureFilmState());
    }
  }
}
