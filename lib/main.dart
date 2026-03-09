import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/splash_screen_ui.dart';
import 'views/home_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotline Thailand',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const SplashPage(),
    );
  }
}