import 'package:flutter/material.dart';
import 'package:learning_app/models/item_data.dart';

class RandomModel extends ChangeNotifier {
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/animals/cat.png',
        enName: 'Cat',
        spName: 'Gato',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/one.png',
        enName: 'One',
        spName: 'Uno',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/sister.png',
        enName: 'Sister',
        spName: 'La Hermana',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/purple.png',
        enName: 'Purple',
        spName: 'Morado',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/numbers/ten.png',
        enName: 'Ten',
        spName: 'Diez',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/animals/dog.png',
        enName: 'Dog',
        spName: 'Perro',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/family/father.png',
        enName: 'Father',
        spName: 'El Padre',
        sound: ''),
    const ItemDateModel(
        image: 'assets/images/colors/blue.png',
        enName: 'Blue',
        spName: 'Azul',
        sound: ''),
  ];
  int index = 0;
  ItemDateModel get item => _list[index];

  void goRight() {
    index++;
    index %= _list.length;
    notifyListeners();
  }

  void goLeft() {
    index--;
    if (index < 0) index = _list.length - 1;
    notifyListeners();
  }
}
