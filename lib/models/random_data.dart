import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_app/models/item_data.dart';

class RandomModel extends ChangeNotifier {
  final List<ItemDateModel> _list = [
    const ItemDateModel(
        image: 'assets/images/animals/cat.png',
        enName: 'Cat',
        spName: 'Gato',
        sound: 'sounds/animals/cat.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/one.png',
        enName: 'One',
        spName: 'Uno',
        sound: 'sounds/numbers/one.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/sister.png',
        enName: 'Sister',
        spName: 'La Hermana',
        sound: 'sounds/family/sister.mp3'),
    const ItemDateModel(
        image: 'assets/images/colors/purple.png',
        enName: 'Purple',
        spName: 'Morado',
        sound: 'sounds/colors/purple.mp3'),
    const ItemDateModel(
        image: 'assets/images/numbers/ten.png',
        enName: 'Ten',
        spName: 'Diez',
        sound: 'sounds/numbers/ten.mp3'),
    const ItemDateModel(
        image: 'assets/images/animals/dog.png',
        enName: 'Dog',
        spName: 'Perro',
        sound: 'sounds/animals/dog.mp3'),
    const ItemDateModel(
        image: 'assets/images/family/father.png',
        enName: 'Father',
        spName: 'El Padre',
        sound: 'sounds/family/father.mp3'),
    const ItemDateModel(
        image: 'assets/images/colors/blue.png',
        enName: 'Blue',
        spName: 'Azul',
        sound: 'sounds/colors/blue.mp3'),
  ];
  int _index = 0;
  final List<Color> _colors = [
    const Color.fromARGB(68, 249, 146, 189),
    const Color.fromARGB(68, 146, 249, 233),
    const Color.fromARGB(68, 216, 249, 146),
    const Color.fromARGB(68, 146, 185, 249),
  ];
  ItemDateModel get item => _list[_index];

  Color get randomColor {
    Random random = Random();
    int randomNumber = random.nextInt(10);
    return _colors[randomNumber % _colors.length];
  }

  void goRight() {
    _index++;
    _index %= _list.length;
    notifyListeners();
  }

  void goLeft() {
    _index--;
    if (_index < 0) _index = _list.length - 1;
    notifyListeners();
  }
}
