import 'package:cinema_lab/get_film_cubit/get_film_cubit.dart';
import 'package:cinema_lab/get_film_cubit/get_film_cubit_states.dart';
import 'package:cinema_lab/widgets/film_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Cinema Lab',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
          //  integrate the cubit here because that is the screen that will show the result of the search
          //  the screen that will change so i will use bloc builder here to listen to the changes in the cubit and show the result of the search
          BlocBuilder<GetFilmCubit, FilmState>(
            builder: (context, state) {
              if (state is LoadedFilmState) {
                return FilmListtile(film: state.filmModel);
              } else if (state is FailureFilmState) {
                return Center(
                  child: Text('Failed to load film data. Please try again.'),
                );
              } else if (state is NoFilmState) {
                return Center(child: CircularProgressIndicator());
              }
              return const SizedBox();
            },
          ),
    );
  }
}
