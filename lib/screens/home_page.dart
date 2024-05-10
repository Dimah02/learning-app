import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
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
        body: ListView(children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Text("Random words",
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
            height: 250,
            width: double.infinity,
            color: Colors.red,
          ),
          Row(
            children: [
              const Spacer(flex: 1),
              ElevatedButton(onPressed: () {}, child: const Text("left")),
              const Spacer(flex: 1),
              ElevatedButton(onPressed: () {}, child: const Text("right")),
              const Spacer(flex: 1),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 16, bottom: 16),
            child: Text("Categories",
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                color: const Color(0XFF8078BC),
                onTap: () {},
                text: "Numbers",
                image: "assets/images/categories/numbers.png",
              ),
              const SizedBox(
                width: 32,
              ),
              Category(
                color: const Color(0XFFF4DD45),
                onTap: () {},
                text: "Family",
                image: "assets/images/categories/family.png",
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                color: const Color(0XFF86F1A7),
                onTap: () {},
                text: "Colors",
                image: "assets/images/categories/palette.png",
              ),
              const SizedBox(
                width: 32,
              ),
              Category(
                color: const Color(0XFFD82973),
                onTap: () {},
                text: "Animals",
                image: "assets/images/categories/animals.png",
              ),
            ],
          ),
        ]));
  }
}
