import 'package:flutter/material.dart';

import '../../models/joke.dart';


class JokeCard extends StatelessWidget {
  final Joke joke;

  const JokeCard({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(
            joke.setup,
            style: TextStyle(
              fontSize: 18, // Adjust the font size
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            joke.punchline,
            style: TextStyle(
              fontSize: 16, // Adjust the font size
            ),
          ),
        ),
      ),
    );
  }
}
