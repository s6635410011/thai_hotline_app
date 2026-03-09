import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("ผู้จัดทำ"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),

            const SizedBox(height: 20),

            const Text(
              "Thai Hotline App",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const Text("เวอร์ชัน 1.0"),

          ],
        ),
      ),
    );
  }
}