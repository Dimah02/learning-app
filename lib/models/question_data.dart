import 'package:flutter/material.dart';
import 'package:learning_app/models/question.dart';

class QuestionModel extends ChangeNotifier {List<Question> questions = [
    Question(
      "How do we say Cat in Spanish?",
      ["Gato", "Perra", "Pajaro", "Raton"],
      1), 
    Question(
      "How do we say Grandma in Spanish?",
      ["Abuelo", "Tio", "Abuela", "Tia"],
      3),
    Question(
      "How do we say pink in Spanish?",
      ["Azul", "Roja", "Amarilla", "Rosa"],
      4),
    Question(
      "How do we say bye in Spanish?",
      ["Hola", "Adios", "Gracias", "Buena"],
      2),
  ];}