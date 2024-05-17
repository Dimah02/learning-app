import 'package:flutter/material.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});

  @override
  State<Quize> createState() => _QuizeState();
}

class _QuizeState extends State<Quize> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Quize"),
      ),
    );
  }
}
