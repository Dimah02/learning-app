import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';
import 'package:learning_app/screens/hangman.dart';
import 'package:learning_app/screens/home_body.dart';
import 'package:learning_app/screens/quize.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  List<Widget> screens = [Quize(), HomeBody(), Hangman()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Image(
            image: AssetImage("assets/images/logo/puzzle.png"),
            width: 35,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Palabra",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ]),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newVal) {
          setState(() {
            currentIndex = newVal;
          });
        },
        selectedItemColor: Color(0XFFD82973),
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2),
            label: "Quize",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: "Hangman",
          ),
        ],
      ),
    );
  }
}
