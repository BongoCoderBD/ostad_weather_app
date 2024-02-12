import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue, 
            foregroundColor: Colors.white),
      ),
      home: const HomeScreen(),
    );
  }
}
