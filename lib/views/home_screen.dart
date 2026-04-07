import 'package:cinema_lab/widgets/film_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            const Text(
              'Cinema Lab',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
      ),

      body: GridView.builder(
        itemCount: 21,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          //  to make the cards taller
          childAspectRatio: 0.6,
          // vertical space
        ),
        itemBuilder: (context, index) {
          return FilmCard(
            imageUrl: 'assets/images/film.png',
            title: 'Film Title',
            rating: 4.5,
          );
        },
      ),
    );
  }
}
