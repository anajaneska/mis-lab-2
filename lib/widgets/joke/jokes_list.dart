import 'package:flutter/material.dart';
import '../../models/joke.dart';
import 'joke_card.dart'; // Import the JokeCard widget


class JokeList extends StatelessWidget {
  final List<Joke> jokes;
  final void Function(Joke joke) onFavoriteToggle;

  const JokeList({super.key, required this.jokes, required this.onFavoriteToggle,});

  @override
  Widget build(BuildContext context) {
    return jokes.isEmpty
        ? Center(child: CircularProgressIndicator()) // Show loading indicator if no jokes
        : ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        final joke = jokes[index];
        return JokeCard(
            joke: joke,
            onFavoriteToggle: () => onFavoriteToggle(joke),
        ); // Using JokeCard widget for each joke
      },
    );
  }
}
