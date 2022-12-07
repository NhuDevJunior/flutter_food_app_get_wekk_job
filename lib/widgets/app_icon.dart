import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;
  AppIcon(
      {required this.icon,
        this.backgroundColor = const Color(0xFFfcf4e4),
        this.iconColor = const Color(0xFF756d54),
        this.size = 40, this.iconSize = 18});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size/2)
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );

  }
}