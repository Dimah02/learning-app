import 'package:flutter/material.dart';
import 'package:learning_app/models/item_data.dart';

class RandomWord extends StatelessWidget {
  const RandomWord({super.key, required this.item});
  final ItemDateModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(68, 249, 146, 189),
          border: Border.all(color: const Color(0XFFD82973)),
          borderRadius: const BorderRadius.all(Radius.circular(64))),
      margin: const EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 16),
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          // ignore: sized_box_for_whitespace
          Container(width: 130, child: Image(image: AssetImage(item.image!))),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  item.enName,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  item.spName,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ]),
              const SizedBox(
                width: 72,
              ),
              IconButton(
                onPressed: () async {
                  // final player = AudioPlayer();
                  // await player.setSourceAsset(item.sound);
                  // await player.resume();
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 40,
                  color: Color(0XFFD82973),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
