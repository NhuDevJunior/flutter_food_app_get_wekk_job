import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({Key? key, required this.color, required this.text,
     this.overflow = TextOverflow.ellipsis,
     this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
        fontSize: size
      ),

    );
  }
}
