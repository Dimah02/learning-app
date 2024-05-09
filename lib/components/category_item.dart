import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? onTap;
  Category({this.text, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: double.infinity,
        height: 65,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        child: Text(
          '${text!}',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
