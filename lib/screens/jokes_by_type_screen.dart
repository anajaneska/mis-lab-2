import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/joke.dart';
import '../provider/favorites_provider.dart';
import '../services/api_service.dart';
import '../widgets/joke/jokes_list.dart';


class JokesByTypeScreen extends StatefulWidget {
  final String jokeType;

  const JokesByTypeScreen({super.key, required this.jokeType});

  @override
  _JokesByTypeScreenState createState() => _JokesByTypeScreenState();
}

class _JokesByTypeScreenState extends State<JokesByTypeScreen> {
  List<Joke> jokes = [];

  @override
  void initState() {
    super.initState();
    getJokesByType();
  }

  void getJokesByType() async {
    try {
      final jokesList = await ApiService.getJokesByType(widget.jokeType);
      setState(() {
        jokes = jokesList;
      });
    } catch (e) {
      // Handle error here
      print('Failed to load jokes: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Jokes: ${widget.jokeType}'),
      ),
      body: JokeList(
          jokes: jokes,
          onFavoriteToggle: (Joke joke) {
            favoritesProvider.toggleFavorite(joke);
          },
      ), // Using JokeList widget here
    );
  }
}

