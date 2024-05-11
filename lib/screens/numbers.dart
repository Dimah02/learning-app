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
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/two.png',
        enName: 'Two',
        spName: 'Dos',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/three.png',
        enName: 'Three',
        spName: 'Tres',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/four.png',
        enName: 'Four',
        spName: 'Cuatro',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/five.png',
        enName: 'Five',
        spName: 'Cinco',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/six.png',
        enName: 'Six',
        spName: 'Seis',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/seven.png',
        enName: 'Seven',
        spName: 'Siete',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/eight.png',
        enName: 'Eight',
        spName: 'Ocho',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/nine.png',
        enName: 'Nine',
        spName: 'Nueve',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/ten.png',
        enName: 'Ten',
        spName: 'Diez',
        sound: ''),
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
        itemBuilder: (context, num) {
          return Item(
            item: _list[num],
          );
        },
      ),
    );
  }
}
