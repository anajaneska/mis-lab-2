import 'package:flutter/material.dart';

import '../../screens/jokes_by_type_screen.dart';


class JokeCard extends StatelessWidget {
  final String type;

  JokeCard({required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(
              type,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.2,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JokesByTypeScreen(jokeType: type),
              ),
            );
          },
        ),
      ),
    );
  }
}
