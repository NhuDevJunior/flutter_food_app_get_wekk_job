import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/AppColors.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  IconAndTextWidget(this.icon, this.text, this.color, this.iconColor);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 5,),
        SmallText(color: color, text: text)
      ],
    );
  }

}
