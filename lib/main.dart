import 'package:flutter/material.dart';
import 'package:learning_app/models/numbers_data.dart';
import 'package:learning_app/screens/home_page.dart';
import 'package:learning_app/screens/numbers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RandomModel()),
    ],
    child: LearningApp(),
  ));
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/numbers': (context) => Numbers(),
      },
    );
  }
}
