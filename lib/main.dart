import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mis_lab2/provider/favorites_provider.dart';
import 'package:mis_lab2/screens/favorite_jokes_screen.dart';
import 'package:mis_lab2/screens/home.dart';
import 'package:mis_lab2/screens/random_joke_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          '/random': (context) => RandomJokeScreen(),
          '/favorites': (context) => FavoriteJokesScreen(),
        },
      ),
    ),
  );
}
