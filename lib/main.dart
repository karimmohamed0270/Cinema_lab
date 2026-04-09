import 'package:cinema_lab/get_film_cubit/get_film_cubit.dart';
import 'package:cinema_lab/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetFilmCubit(),
      child: MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false),
    );
  }
}
