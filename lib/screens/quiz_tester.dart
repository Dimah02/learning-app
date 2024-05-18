import 'package:flutter/material.dart';

 
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == Question.questions[currentQuestionIndex].answerIndex) {
      score++;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= questions.length) {
      return ResultScreen(score, questions.length); // Display results screen
    } else {
      Question question = questions[currentQuestionIndex];
      return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(question.image),
              Text(question.questionText, style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 10.0),
              ...List.generate(question.options.length, (index) {
                return ElevatedButton(
                  onPressed: () => checkAnswer(index),
                  child: Text(question.options[index]),
                );
              }),
            ],
          ),
        ),
      );
    }
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ResultScreen(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Score: $score/$totalQuestions'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // Go back to main screen
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time For A Pop Quiz :D !!',
      home: QuizScreen(),
    );
  }
}

