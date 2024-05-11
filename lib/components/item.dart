import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learning_app/models/item_data.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});
  final ItemDateModel item;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// IconButton(
          //   onPressed: () async {
          //     final player = AudioPlayer();
          //     await player.setSourceAsset(item.sound);
          //     await player.resume();
          //   },
          //   icon: Icon(
          //     Icons.play_arrow,
          //     size: 28,
          //     color: color2,
          //   ),
          // )