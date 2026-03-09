import 'package:flutter/material.dart';
import 'dart:async';
import 'home_ui.dart';   // ⭐ เพิ่มบรรทัดนี้

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeUI(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff7b500),
              Color(0xfff2a100),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),

              color: Colors.white.withOpacity(0.25),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),

            child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [

    Image.asset(
      "assets/images/logocar.png",
      width: 120,
    ),

    const SizedBox(height: 15),

    const Text(
      "สายด่วน THAILAND",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1,
      ),
    ),

    const SizedBox(height: 5),

    const Text(
      "Hotline & Emergency Numbers",
      style: TextStyle(
        fontSize: 13,
        color: Colors.white70,
      ),
    ),

  ],
),
          ),
        ),
      ),
    );  
  }
}