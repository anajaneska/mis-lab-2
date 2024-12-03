import 'package:flutter/material.dart';
import '../models/joke.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokes: ${widget.jokeType}'),
      ),
      body: JokeList(jokes: jokes), // Using JokeList widget here
    );
  }
}

