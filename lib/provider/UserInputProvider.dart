import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInputProvider with ChangeNotifier {
  String _userInput = '';

  String get userInput => _userInput;

  void setUserInput(String value) {
    _userInput = value;
    _saveUserInput(value);
    notifyListeners();
  }

  Future<void> _saveUserInput(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userInput', value);
  }

  Future<void> loadUserInput() async {
    final prefs = await SharedPreferences.getInstance();
    _userInput = prefs.getString('userInput') ?? '';
    notifyListeners();
  }
}
