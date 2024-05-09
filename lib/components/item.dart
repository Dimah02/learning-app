import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learning_app/models/item_data.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.item,
      required this.color1,
      required this.color2})
      : super(key: key);
  final ItemDateModel item;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color1,
      child: Row(
        children: [
          Container(
            color: color2,
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.spName,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.setSourceAsset(item.sound);
              await player.resume();
            },
            icon: Icon(
              Icons.play_arrow,
              size: 28,
              color: color2,
            ),
          )
        ],
      ),
    );
  }
}

