import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/item_data.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});
  final ItemDateModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          child: Row(
            children: [
              Image(image: AssetImage(item.image!)),
              const SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.enName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    item.spName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
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
                icon: const Icon(
                  Icons.play_arrow,
                  size: 28,
                  color: Color(0XFFD82973),
                ),
              ),
              const SizedBox(
                width: 32,
              )
            ],
          ),
        ),
        const Divider(
          indent: 16,
          endIndent: 16,
        )
      ],
    );
  }
}
