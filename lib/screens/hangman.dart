import 'package:flutter/material.dart';

class Hangman extends StatefulWidget {
  const Hangman({super.key});

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hangman"),
      ),
    );
  }
}
