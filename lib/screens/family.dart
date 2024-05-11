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
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/mother.png',
        enName: 'Mother',
        spName: 'La Madre',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/brother.png',
        enName: 'Brother',
        spName: 'El Hermano',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/sister.png',
        enName: 'Sister',
        spName: 'La Hermana',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/grandfather.png',
        enName: 'Grandfather',
        spName: 'El Abuelo',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/grandmother.png',
        enName: 'Grandmother',
        spName: 'La Aboela',
        sound: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family",
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
