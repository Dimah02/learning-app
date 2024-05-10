import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Text("Random words",
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
            height: 250,
            width: double.infinity,
            color: Colors.red,
          ),
          Row(
            children: [
              const Spacer(flex: 1),
              ElevatedButton(onPressed: () {}, child:const Text("left")),
              const Spacer(flex: 1),
              ElevatedButton(onPressed: () {}, child:const Text("right")),
              const Spacer(flex: 1),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0,top: 16),
            child: Text("Categories",
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
        ]));
  }
}
