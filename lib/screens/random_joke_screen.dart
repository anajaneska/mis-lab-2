import 'package:flutter/material.dart';
import 'package:mis_lab2/services/api_service.dart';
import '../models/joke.dart';

class RandomJokeScreen extends StatefulWidget {
  @override
  _RandomJokeScreenState createState() => _RandomJokeScreenState();
}

class _RandomJokeScreenState extends State<RandomJokeScreen> {
  late Joke randomJoke;
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    getRandomJoke();
  }

  // Function to fetch the random joke
  void getRandomJoke() async {
    try {
      final joke = await ApiService.getRandomJoke();
      setState(() {
        randomJoke = joke;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = 'Failed to load joke';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Joke')),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : errorMessage != null
            ? Text(errorMessage!, style: TextStyle(fontSize: 18, color: Colors.red))
            : Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                randomJoke.setup,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                randomJoke.punchline,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
