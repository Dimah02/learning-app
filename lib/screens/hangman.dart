import 'package:flutter/material.dart';
import 'package:learning_app/models/hangman_data.dart';
import 'package:provider/provider.dart';

class Hangman extends StatefulWidget {
  const Hangman({super.key});

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  List<int>? chosed;
  String? word;
  String letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  @override
  Widget build(BuildContext context) {
    initState() {
      chosed = Provider.of<HangManModel>(context).chosedChar;
      word = Provider.of<HangManModel>(context).word;
      if (Provider.of<HangManModel>(context).isWin) {
        WidgetsBinding.instance.addPostFrameCallback((_) => openDialog());
      }
      if (Provider.of<HangManModel>(context).isLoose) {
        WidgetsBinding.instance.addPostFrameCallback((_) => openDialog2());
      }
    }

    initState();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Score: ${Provider.of<HangManModel>(context).score}",
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(Provider.of<HangManModel>(context).img),
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: currentWord(),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: buttons(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            title: Text("You won!!!"),
          ));
  Future openDialog2() => showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            title: Text("Try Again!"),
          ));

  List<Widget> currentWord() {
    List<Widget> list = [];
    for (int i = 0; i < word!.length; i++) {
      int idx = word![i].toUpperCase().codeUnits[0];
      if (chosed![idx - 65] == 1) {
        list.add(Text(
          word![i],
          style: const TextStyle(fontSize: 40),
        ));
      } else {
        list.add(const Text(
          "_",
          style: TextStyle(fontSize: 40),
        ));
      }
      list.add(const SizedBox(
        width: 8,
      ));
    }
    return list;
  }

  List<Widget> buttons() {
    List<Widget> list = [];
    for (int i = 0; i < letters.length; i++) {
      if (chosed![i] == 1) {
        list.add(GestureDetector(
            onTap: () {
              Provider.of<HangManModel>(context, listen: false)
                  .enterdChar(letters[i]);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.green)),
                child: Text(
                  letters[i],
                  style: const TextStyle(fontSize: 20),
                ))));
      } else if (chosed![i] == 2) {
        list.add(GestureDetector(
            onTap: () {
              Provider.of<HangManModel>(context, listen: false)
                  .enterdChar(letters[i]);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.red)),
                child: Text(
                  letters[i],
                  style: const TextStyle(fontSize: 20),
                ))));
      } else {
        list.add(GestureDetector(
            onTap: () {
              Provider.of<HangManModel>(context, listen: false)
                  .enterdChar(letters[i]);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black12)),
                child: Text(
                  letters[i],
                  style: const TextStyle(fontSize: 20),
                ))));
      }
    }
    return list;
  }
}
