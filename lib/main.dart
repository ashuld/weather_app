import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/pages/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 8, 27, 37),
        useMaterial3: true,
      ),
      home: const ScreenHomePage(),
    );
  }
}
