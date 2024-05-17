import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';
import 'package:learning_app/components/random_word.dart';
import 'package:learning_app/models/item_data.dart';
import 'package:learning_app/models/random_data.dart';
import 'package:provider/provider.dart';

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
          RandomWord(
            item: ItemDateModel(
              image: Provider.of<RandomModel>(context).item.image,
              enName: Provider.of<RandomModel>(context).item.enName,
              spName: Provider.of<RandomModel>(context).item.spName,
              sound: Provider.of<RandomModel>(context).item.sound,
            ),
            color: Provider.of<RandomModel>(context).randomColor,
          ),
          Row(
            children: [
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: () {
                  Provider.of<RandomModel>(context, listen: false).goLeft();
                },
                style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0XFFD82973),
                  size: 35,
                ),
              ),
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: () {
                  Provider.of<RandomModel>(context, listen: false).goRight();
                },
                style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color(0XFFD82973),
                  size: 35,
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            endIndent: 32,
            indent: 32,
            color: Colors.black12,
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
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
