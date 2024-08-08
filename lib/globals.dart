// globals.dart
library my_app.globals;

import 'package:shared_preferences/shared_preferences.dart';

String userInput = 'alexandria';

Future<void> saveUserInput(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('userInput', value);
}

Future<String?> getUserInput() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userInput');
}
