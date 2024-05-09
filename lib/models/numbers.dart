// import 'package:flutter/material.dart';
// import 'package:toku/components/item.dart';
// import 'package:toku/models/number.dart';

// class NumbersPage extends StatelessWidget {
//   const NumbersPage({Key? key}) : super(key: key);
//   final List<NumberModel> numbers = const [
//     NumberModel(
//         image: 'assets/images/numbers/number_one.png',
//         enName: 'one',
//         jpName: 'ichi',
//         sound: 'sounds/numbers/number_one_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_two.png',
//         enName: 'two',
//         jpName: 'ni',
//         sound: 'sounds/numbers/number_two_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_three.png',
//         enName: 'three',
//         jpName: 'san',
//         sound: 'sounds/numbers/number_three_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_four.png',
//         enName: 'four',
//         jpName: 'shi',
//         sound: 'sounds/numbers/number_four_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_five.png',
//         enName: 'five',
//         jpName: 'go',
//         sound: 'sounds/numbers/number_five_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_six.png',
//         enName: 'six',
//         jpName: 'roku',
//         sound: 'sounds/numbers/number_six_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_seven.png',
//         enName: 'seven',
//         jpName: 'sebun',
//         sound: 'sounds/numbers/number_seven_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_eight.png',
//         enName: 'eight',
//         jpName: 'hachi',
//         sound: 'sounds/numbers/number_eight_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_nine.png',
//         enName: 'nine',
//         jpName: 'kyu',
//         sound: 'sounds/numbers/number_nine_sound.mp3'),
//     NumberModel(
//         image: 'assets/images/numbers/number_ten.png',
//         enName: 'ten',
//         jpName: 'ju',
//         sound: 'sounds/numbers/number_ten_sound.mp3'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(168, 0, 0, 101),
//         title: const Text(
//           "Numbers",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       // body: ListView(
//       //   children: getList(numbers),
//       // ), this is a bad approach
//       body: ListView.builder(
//         //it only render the hidden widgets when user scroll down
//         itemCount: numbers.length, //limit for the loop
//         itemBuilder: (context, num) {
//           // num return index
//           return Item(
//             item: numbers[num],
//             color1: const Color.fromARGB(80, 50, 148, 246),
//             color2: const Color.fromARGB(200, 50, 148, 246),
//           );
//         },
//       ),
//     );
//   }

//   /*List<Widget> getList(List<Number> numbers) {
//     List<Widget> itemsList = [];
//     for (int i = 0; i < numbers.length; i++) {
//       itemsList.add(Item(number: numbers[i]));
//     }
//     return itemsList;
//   }*/
// }
