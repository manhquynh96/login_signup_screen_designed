import 'package:flutter/material.dart';
import 'package:login_signup_screen_designed/ui_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UiPage(),
    );
  }
}
