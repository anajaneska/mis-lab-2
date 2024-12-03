import 'package:flutter/material.dart';
import 'package:mis_lab2/screens/home.dart';
import 'package:mis_lab2/screens/random_joke_screen.dart';

void main() =>
    runApp(MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (context) => Home(),
          '/random': (context) => RandomJokeScreen(),
        }
    ));
