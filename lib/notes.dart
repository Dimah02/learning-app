mport 'package:flutter/material.dart';

enum Fruits { apple, banana }

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double sliderValue = 0;
  bool switchValue = false;
  Fruits fruit = Fruits.apple;
  List<String> list = <String>[
    'Computer Scince',
    'Software Engineering',
    'Cyper Security',
    'Data Scince'
  ];
  String dropdownValue = "Computer Scince";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("working"),
      ),
      body: ListView(
        children: [
          Slider(
            // Slider
            value: sliderValue,
            min: 0,
            max: 10,
            divisions: 10,
            label: "$sliderValue",
            onChanged: (newVal) {
              setState(() {
                sliderValue = newVal;
              });
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Switch(
              // Switch
              value: switchValue,
              onChanged: (newVal) {
                setState(() {
                  switchValue = newVal;
                });
              }),
          const SizedBox(
            height: 16,
          ),
          Checkbox(
              // Checkbox
              value: switchValue,
              onChanged: (newVal) {
                setState(() {
                  switchValue = newVal!;
                });
              }),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Apple"),
              Radio<Fruits>(
                value: Fruits.apple,
                groupValue: fruit,
                onChanged: (newVal) {
                  setState(() {
                    fruit = newVal!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Banana"),
              Radio<Fruits>(
                value: Fruits.banana,
                groupValue: fruit,
                onChanged: (newVal) {
                  setState(() {
                    fruit = newVal!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Text(fruit.name),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: DropdownButton<String>(
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((String newValue) {
                  return DropdownMenuItem<String>(
                    value: newValue,
                    child: Text(newValue),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                }),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Text(dropdownValue),
          ),
          const SizedBox(
            height: 16,
          ),
          Transform.scale(
            scale: 0.8,
            child: CheckboxListTile(
              value: switchValue,
              secondary: const Icon(Icons.abc),
              title: const Text(
                "this is a title",
                style: TextStyle(fontSize: 32),
              ),
              subtitle: const Text("this is a subtitle"),
              onChanged: (newVal) {
                setState(() {
                  switchValue = newVal!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const ListTile(
            title: Text("this is a title"),
            leading: Text("this is a leading"),
            trailing: Text("this is a trailing"),
          ),
          ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text("hello"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text("Press"),
          )
        ],
      ),
    );
  }
}
