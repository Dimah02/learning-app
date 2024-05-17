import 'dart:math';

import 'package:flutter/material.dart';

class HangManModel extends ChangeNotifier {
  final List<String> _words = [
    "Pajaro",
    "Azul",
    "Perro",
    "Serpiente",
    "Naranja",
    "Amarillo",
    "Siete",
    "Cuatro",
    "Hermano",
  ];
  final List<String> _images = [
    "assets/images/hangman/Slide1.PNG",
    "assets/images/hangman/Slide2.PNG",
    "assets/images/hangman/Slide3.PNG",
    "assets/images/hangman/Slide4.PNG",
    "assets/images/hangman/Slide5.PNG",
    "assets/images/hangman/Slide6.PNG",
    "assets/images/hangman/Slide7.PNG",
    "assets/images/hangman/Slide8.PNG",
  ];

  bool _endgame = true;
  bool _win = false;
  bool _loose = false;
  String _word = "";
  int _imgIndx = 0;
  int _score = 0;
  final List<int> _chosed = [];

  String get img => _images[_imgIndx];
  bool get isWin => _win;
  bool get isLoose => _loose;
  int get score => _score;

  String get word {
    if (_endgame) {
      Random random = Random();
      int randomNumber = random.nextInt(10);
      String randWord = _words[randomNumber % _words.length];
      _word = randWord;
      _imgIndx = 0;
      _win = false;
      _loose = false;
      _chosed.clear();
      for (int i = 0; i < 26; i++) {
        _chosed.add(0);
      }
      _endgame = false;
    }

    return _word;
  }

  List<int> get chosedChar {
    word;
    return _chosed;
  }

  void enterdChar(String s) {
    int assci = s.toUpperCase().codeUnits[0];
    if (_word.contains(s.toUpperCase()) || _word.contains(s.toLowerCase())) {
      _chosed[assci - 65] = 1;
      bool ok = true;
      for (int i = 0; i < _word.length; i++) {
        int k = _word[i].toUpperCase().codeUnits[0];
        if (_chosed[k - 65] != 1) ok = false;
      }
      if (ok) _win = true;
    } else {
      _chosed[assci - 65] = 2;
      _imgIndx++;
      if (_imgIndx == _images.length) {
        _loose = true;
      }
    }

    if (_win || _loose || _imgIndx == 8) {
      if (_win) _score++;
      _endgame = true;
    }
    notifyListeners();
  }
}
