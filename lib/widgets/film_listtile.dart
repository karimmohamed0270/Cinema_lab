import 'package:flutter/material.dart';

class FilmListtile extends StatelessWidget {
  const FilmListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1.6,
        child: Image.network(
          'https://tse1.mm.bing.net/th/id/OIP.4qkh3f1HliC2rFVbHScLjwHaKe?rs=1&pid=ImgDetMain&o=7&rm=3',
          fit: BoxFit.fill,
        ),
      ),
      title: Text('Film Title'),
      subtitle: Text(
        'Describtion of the film goes here.Describtion of the film goes here.Describtion of the film goes here.Describtion of the film goes here.Describtion of the film goes here.',
      ),
      trailing: Text('7.5'),
    );
  }
}
