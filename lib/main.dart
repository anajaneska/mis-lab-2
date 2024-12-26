import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mis_lab2/provider/favorites_provider.dart';
import 'package:mis_lab2/screens/favorite_jokes_screen.dart';
import 'package:mis_lab2/screens/home.dart';
import 'package:mis_lab2/screens/random_joke_screen.dart';
import 'package:mis_lab2/services/notification_service.dart';
import 'package:provider/provider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationService().initNotifications();

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
