import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final String? image;
  final Color? color;
  final VoidCallback? onTap;
  const Category({super.key, this.text, this.image, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 110,
          height: 110,
          child: CircleAvatar(
            backgroundImage: AssetImage(image!),
            backgroundColor: color!,
            child: Text(
              text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Color.fromARGB(86, 0, 0, 0),
                  letterSpacing: 1.5),
            ),
          ),
        ));
  }
}
