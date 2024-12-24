import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/joke.dart';
import '../provider/favorites_provider.dart';
import '../widgets/joke/joke_card.dart';

class FavoriteJokesScreen extends StatelessWidget {
  const FavoriteJokesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final favoriteJokes = favoritesProvider.favoriteJokes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Jokes'),
      ),
      body: favoriteJokes.isEmpty
          ? const Center(child: Text('No favorite jokes yet!'))
          : ListView.builder(
        itemCount: favoriteJokes.length,
        itemBuilder: (context, index) {
          final joke = favoriteJokes[index];
          return JokeCard(
            joke: joke,
            onFavoriteToggle: () {
              favoritesProvider.toggleFavorite(joke);
            },
          );
        },
      ),
    );
  }
}