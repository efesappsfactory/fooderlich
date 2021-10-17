import 'package:flutter/material.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(title: const Text("Fooderlich")),
        body: const Center(child: Text("Let's get cooking 👩‍🍳"),),
      ),
    );
  }
}

