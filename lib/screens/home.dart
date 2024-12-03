import 'dart:convert';
import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/joke.dart';
import '../widgets/joke_type/joke_type_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> jokeTypes = [];

  @override
  void initState() {
    super.initState();
    fetchJokeTypes();
  }

  void fetchJokeTypes() async {
    try {
      // Fetch joke types from API
      final types = await ApiService.getJokeTypes();
      setState(() {
        jokeTypes = types;
      });
    } catch (error) {
      // Handle error
      print('Error fetching joke types: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          "Joke App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/random');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.redAccent,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Padding around the text
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
            ),
            child: Text(
              "Get Random Joke",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: JokesList(jokeTypes: jokeTypes),
    );
  }
}



