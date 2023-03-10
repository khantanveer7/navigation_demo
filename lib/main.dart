import 'package:flutter/material.dart';
import 'package:navigation/Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // To hide the debug banner
      debugShowCheckedModeBanner: false,
      // To change the app title
      title: 'Navigation Demo',
      // To change the theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // To set the home screen
      home: HomeScreen(),
    );
  }
}
