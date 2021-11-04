import 'package:flutter/material.dart';
import 'package:offichour_app/ui/home.dart';

void main() {
  runApp(Offichour());
}

class Offichour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
