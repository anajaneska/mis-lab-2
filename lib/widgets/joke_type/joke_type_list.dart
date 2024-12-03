import 'package:flutter/material.dart';

import 'joke_type_card.dart';


class JokesList extends StatelessWidget {
  final List<String> jokeTypes;

  const JokesList({required this.jokeTypes, super.key});

  @override
  Widget build(BuildContext context) {
    return jokeTypes.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
      itemCount: jokeTypes.length,
      itemBuilder: (context, index) {
        return JokeCard(type: jokeTypes[index]);
      },
    );
  }
}
