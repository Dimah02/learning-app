import 'package:flutter/material.dart';
import 'package:learning_app/models/numbers_data.dart';
import 'package:learning_app/screens/animals.dart';
import 'package:learning_app/screens/colors.dart';
import 'package:learning_app/screens/family.dart';
import 'package:learning_app/screens/home_page.dart';
import 'package:learning_app/screens/numbers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RandomModel()),
    ],
    child: const LearningApp(),
  ));
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/numbers': (context) => Numbers(),
        '/family': (context) => Family(),
        '/animals': (context) => Animals(),
        '/colors': (context) => ColorsPage(),
      },
    );
  }
}
