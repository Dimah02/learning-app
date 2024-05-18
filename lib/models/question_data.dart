import 'package:flutter/material.dart';
import 'package:learning_app/models/question.dart';

class QuestionModel extends ChangeNotifier {
  final List<Question> _questions = [
    Question(
        "How do we say Cat in Spanish?",
        ["Gato", "Perra", "Pajaro", "Raton"],
        1,
        'assets/images/animals/cat.png'),
    Question(
        "How do we say Grandma in Spanish?",
        ["Abuelo", "Tio", "Abuela", "Tia"],
        3,
        'assets/images/family/grandmother.png'),
    Question(
        "How do we say pink in Spanish?",
        ["Azul", "Roja", "Amarilla", "Morado"],
        4,
        'assets/images/colors/purple.png'),
    Question(
        "How do we say one in Spanish?",
        ["Hola", "uno", "Gracias", "Buena"],
        2,
        'assets/images/numbers/one.png'),
  ];
  int _indx = 0;
  int _score = 0;
  Question get question {
    if (_indx < totalQ) return _questions[_indx];
    return Question("Your total Score", [], score, '');
  }

  int get score => _score;
  int get indx => _indx;
  int get totalQ => _questions.length;
  void checkAns(int ans) {
    if (_indx == _questions.length) {
      _indx = 0;
      _score = 0;
    } else if (_questions[_indx].answerIndex == ans) {
      _score++;
    }
    _indx++;
    notifyListeners();
  }
}
