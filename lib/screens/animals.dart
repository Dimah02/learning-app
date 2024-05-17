import 'package:flutter/material.dart';
import 'package:learning_app/components/item.dart';
import 'package:learning_app/models/item_data.dart';

class Animals extends StatelessWidget {
  Animals({super.key});
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/animals/bird.png',
        enName: 'Bird',
        spName: 'Pajaro',
        sound: 'sounds/animals/bird.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/cat.png',
        enName: 'Cat',
        spName: 'Gato',
        sound: 'sounds/animals/cat.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/cow.png',
        enName: 'Cow',
        spName: 'Vaca',
        sound: 'sounds/animals/cow.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/dog.png',
        enName: 'Dog',
        spName: 'Perro',
        sound: 'sounds/animals/dog.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/fish.png',
        enName: 'Fish',
        spName: 'Pez',
        sound: 'sounds/animals/fish.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/snack.png',
        enName: 'Snack',
        spName: 'Serpiente',
        sound: 'sounds/animals/snack.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFFD82973),
        title: const Text(
          "Animals",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        // ignore: avoid_types_as_parameter_names
        itemBuilder: (context, num) {
          return Item(
            item: _list[num],
          );
        },
      ),
    );
  }
}
