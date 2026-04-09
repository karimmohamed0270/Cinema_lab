import 'package:cinema_lab/widgets/film_listtile.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FilmListtile());
  }
}
