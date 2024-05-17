import 'package:flutter/material.dart';
import 'package:learning_app/components/item.dart';
import 'package:learning_app/models/item_data.dart';

class Numbers extends StatelessWidget {
  Numbers({super.key});
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/numbers/one.png',
        enName: 'One',
        spName: 'Uno',
        sound: 'sounds/numbers/one.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/two.png',
        enName: 'Two',
        spName: 'Dos',
        sound: 'sounds/numbers/two.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/three.png',
        enName: 'Three',
        spName: 'Tres',
        sound: 'sounds/numbers/three.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/four.png',
        enName: 'Four',
        spName: 'Cuatro',
        sound: 'sounds/numbers/four.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/five.png',
        enName: 'Five',
        spName: 'Cinco',
        sound: 'sounds/numbers/five.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/six.png',
        enName: 'Six',
        spName: 'Seis',
        sound: 'sounds/numbers/six.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/seven.png',
        enName: 'Seven',
        spName: 'Siete',
        sound: 'sounds/numbers/seven.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/eight.png',
        enName: 'Eight',
        spName: 'Ocho',
        sound: 'sounds/numbers/eight.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/nine.png',
        enName: 'Nine',
        spName: 'Nueve',
        sound: 'sounds/numbers/nine.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/ten.png',
        enName: 'Ten',
        spName: 'Diez',
        sound: 'sounds/numbers/ten.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Numbers",
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
