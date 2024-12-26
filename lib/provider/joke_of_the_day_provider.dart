import 'package:flutter/cupertino.dart';
import 'package:mis_lab2/services/api_service.dart';

class JokeOfTheDayProvider extends ChangeNotifier {
  String? _setup;
  String? _punchline;

  String? get setup => _setup;
  String? get punchline => _punchline;

  Future<void> fetchJokeOfTheDay() async {
    try {
      final joke = await ApiService.getRandomJoke();
      _setup = joke.setup;
      _punchline = joke.punchline;
      notifyListeners();
    } catch (e) {
      print('Error fetching joke of the day: $e');
    }
  }
}