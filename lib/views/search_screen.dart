import 'package:cinema_lab/get_film_cubit/get_film_cubit.dart';
import 'package:cinema_lab/views/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
      //  body for search field
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: TextField(
            onSubmitted: (value) async {
              // Handle search api logic here
              // step 6 trigger cibit
              //               var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
              // getweathercubit.getweather(cityName: value);

              var getfilmcubit = BlocProvider.of<GetFilmCubit>(context);
              getfilmcubit.getfilm(filmName: value);
              // BlocProvider.of<GetFilmCubit>(context).getfilm(filmName: value);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen()),
              );
            },
            decoration: InputDecoration(
              hintText: 'Search for movies...',
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blueGrey, width: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
