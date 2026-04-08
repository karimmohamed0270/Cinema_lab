import 'package:cinema_lab/views/search_screen.dart';
import 'package:cinema_lab/widgets/filmcardfuturebuilder.dart';
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
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),

      body: const Filmcardfuturebuilder(),
    );
  }
}
