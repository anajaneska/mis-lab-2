import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/joke.dart';
import '../../provider/favorites_provider.dart';


class JokeCard extends StatelessWidget {
  final Joke joke;
  final VoidCallback onFavoriteToggle;

  const JokeCard({super.key, required this.joke, required this.onFavoriteToggle,});

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
          trailing: IconButton(
            icon: Icon(
              joke.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: joke.isFavorite ? Colors.red : null,
            ),
            onPressed: onFavoriteToggle,
          ),
        ),
      ),
    );
  }
}
