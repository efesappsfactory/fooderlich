import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'models/models.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _FooderlichState createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  @override
  Widget build(BuildContext context) {
    //final theme = FooderlichTheme.light();
    final theme = FooderlichTheme.dark();

    return MaterialApp(
      theme: theme,
      title: "Fooderlich",
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
