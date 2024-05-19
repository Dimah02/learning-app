import 'package:flutter/material.dart';
import 'package:learning_app/models/question.dart';
import 'package:learning_app/models/question_data.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    Question question = Provider.of<QuestionModel>(context).question;
    if (question.options.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(question.question, style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 32),
              Text(
                  "${Provider.of<QuestionModel>(context).score}/${Provider.of<QuestionModel>(context).totalQ}",
                  style: const TextStyle(fontSize: 32)),
              const SizedBox(height: 32),
              ElevatedButton(
                  style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(150, 70)),
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(132, 220, 173, 249))),
                  onPressed: () {
                    checkAnswer(2);
                  },
                  child: const Text("Try Again!",
                      style: TextStyle(fontSize: 24, color: Colors.black))),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                "Score: ${Provider.of<QuestionModel>(context).score}/${Provider.of<QuestionModel>(context).totalQ}",
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset(question.image),
              ),
              const SizedBox(height: 32),
              Text(question.question, style: const TextStyle(fontSize: 20.0)),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(150, 70)),
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(132, 220, 173, 249))),
                      onPressed: () {
                        checkAnswer(1);
                      },
                      child: Text(question.options[0],
                          style: const TextStyle(
                              fontSize: 24, color: Colors.black))),
                  const SizedBox(
                    width: 32,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(150, 70)),
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(132, 220, 173, 249))),
                      onPressed: () {
                        checkAnswer(2);
                      },
                      child: Text(question.options[1],
                          style: const TextStyle(
                              fontSize: 24, color: Colors.black))),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(150, 70)),
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(132, 220, 173, 249))),
                    onPressed: () {
                      checkAnswer(3);
                    },
                    child: Text(question.options[2],
                        style:
                            const TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(150, 70)),
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(132, 220, 173, 249))),
                      onPressed: () {
                        checkAnswer(4);
                      },
                      child: Text(question.options[3],
                          style: const TextStyle(
                              fontSize: 24, color: Colors.black))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(int ans) {
    Provider.of<QuestionModel>(context, listen: false).checkAns(ans);
  }
}
