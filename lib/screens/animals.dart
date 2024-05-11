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
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/cat.png',
        enName: 'Cat',
        spName: 'Gato',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/cow.png',
        enName: 'Cow',
        spName: 'Vaca',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/dog.png',
        enName: 'Dog',
        spName: 'Perro',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/fish.png',
        enName: 'Fish',
        spName: 'Pez',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/snack.png',
        enName: 'Snack',
        spName: 'Serpiente',
        sound: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animals",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, num) {
          return Item(
            item: _list[num],
          );
        },
      ),
    );
  }
}
