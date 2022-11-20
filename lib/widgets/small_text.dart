import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  double height;
  SmallText({Key? key, required this.color, required this.text,
    this.size = 10,
    this.height = 1.2 // space between line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: "Roboto",
          fontSize: size,
          height: height
      ),

    );
  }
}
