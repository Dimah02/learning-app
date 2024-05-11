import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 16),
            child: Text(
              "Random words",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 16),
            height: 250,
            width: double.infinity,
            color: Colors.red,
          ),
          Row(
            children: [
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 16, bottom: 8),
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
                onTap: () {
                  Navigator.pushNamed(context, '/numbers');
                },
                text: "Numbers",
                image: "assets/images/categories/numbers.png",
              ),
              const SizedBox(
                width: 32,
              ),
              Category(
                color: const Color(0XFFF4DD45),
                onTap: () {
                  Navigator.pushNamed(context, '/family');
                },
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
                onTap: () {
                  Navigator.pushNamed(context, '/colors');
                },
                text: "Colors",
                image: "assets/images/categories/palette.png",
              ),
              const SizedBox(
                width: 32,
              ),
              Category(
                color: const Color(0XFFD82973),
                onTap: () {
                  Navigator.pushNamed(context, '/animals');
                },
                text: "Animals",
                image: "assets/images/categories/animals.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
