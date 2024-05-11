import 'package:flutter/material.dart';
import 'package:learning_app/components/item.dart';
import 'package:learning_app/models/item_data.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/colors/blue.png',
        enName: 'Blue',
        spName: 'Azul',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/green.png',
        enName: 'Green',
        spName: 'Verde',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/yellow.png',
        enName: 'Yellow',
        spName: 'Amarillo',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/red.png',
        enName: 'Red',
        spName: 'Rojo',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/purple.png',
        enName: 'Purple',
        spName: 'Morado',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/black.png',
        enName: 'Black',
        spName: 'Negro',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/orange.png',
        enName: 'Orange',
        spName: 'Naranja',
        sound: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
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
