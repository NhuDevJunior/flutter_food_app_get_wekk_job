import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/small_text.dart';

import '../utils/AppColors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(color: AppColors.colorDarkPrimary, text: textTitle),
          SizedBox(height: Dimensions.height12,),
          Row(
            children: [
              Wrap(
                children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,)),
              ),
              SizedBox(width: Dimensions.height12,),
              SmallText(color: AppColors.paraColor, text: "4.5"),
              SizedBox(width: Dimensions.height12,),
              SmallText(color: AppColors.paraColor, text: "1287"),
              SizedBox(width: Dimensions.height12,),
              SmallText(color: AppColors.paraColor, text: "comments")
            ],
          ),
          SizedBox(height: Dimensions.height12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconAndTextWidget(Icons.circle_sharp, "Normal", AppColors.paraColor, AppColors.iconColor1),
              IconAndTextWidget(Icons.location_on, "1.7km", AppColors.paraColor, AppColors.mainColor),
              IconAndTextWidget(Icons.access_time_rounded, "32min", AppColors.paraColor, AppColors.iconColor2)
            ],
          )
        ],
      ),
    );
  }

  AppColumn(this.textTitle);
}
