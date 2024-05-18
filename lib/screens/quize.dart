import 'package:flutter/material.dart';
import 'package:learning_app/models/question.dart';
import 'package:learning_app/models/question_data.dart';
import 'package:provider/provider.dart';
 
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    print(selectedIndex);
    if (selectedIndex == Provider.of<QuestionModel>(context).questions[currentQuestionIndex].answerIndex) {
      score++;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= Provider.of<QuestionModel>(context).questions.length) {
      return ResultScreen(score, Provider.of<QuestionModel>(context).questions.length); // Display results screen
    } else {
      Question question = Provider.of<QuestionModel>(context).questions[currentQuestionIndex];
      return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Image.asset(question.image),
              Text(Provider.of<QuestionModel>(context).questions[currentQuestionIndex].question, style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 10.0),
              ...List.generate(Provider.of<QuestionModel>(context).questions[currentQuestionIndex].options.length, (index) {
                return ElevatedButton(
                  onPressed: () => checkAnswer(index),
                  child: Text(Provider.of<QuestionModel>(context).questions[currentQuestionIndex].options[index]),
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
              onPressed:() => Navigator.pop(context), // Go back to main screen
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}




