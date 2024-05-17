import 'package:flutter/material.dart';
import 'package:learning_app/components/item.dart';
import 'package:learning_app/models/item_data.dart';

class Family extends StatelessWidget {
  Family({super.key});
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/family/father.png',
        enName: 'Father',
        spName: 'El Padre',
        sound: 'sounds/family/father.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/mother.png',
        enName: 'Mother',
        spName: 'La Madre',
        sound: 'sounds/family/mother.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/brother.png',
        enName: 'Brother',
        spName: 'El Hermano',
        sound: 'sounds/family/brother.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/sister.png',
        enName: 'Sister',
        spName: 'La Hermana',
        sound: 'sounds/family/sister.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/grandfather.png',
        enName: 'Grandfather',
        spName: 'El Abuelo',
        sound: 'sounds/family/grandfather.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/grandmother.png',
        enName: 'Grandmother',
        spName: 'La Aboela',
        sound: 'sounds/family/grandmother.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFFF4DD45),
        title: const Text(
          "Family",
          style: TextStyle(fontWeight: FontWeight.bold),
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
