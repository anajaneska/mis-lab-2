import 'package:flutter/cupertino.dart';

import '../models/joke.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Joke> _favoriteJokes = [];

  List<Joke> get favoriteJokes => _favoriteJokes;

  void toggleFavorite(Joke joke) {
    joke.toggleFavorite();
    if (_favoriteJokes.contains(joke)) {
      _favoriteJokes.remove(joke);
    } else {
      _favoriteJokes.add(joke);
    }
    notifyListeners();
  }
}