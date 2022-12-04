import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/AppColors.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/small_text.dart';

import '../utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();

  ExpandableTextWidget(this.text);
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget>{
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.height200;
  // i love flutter laravel and golang 30 50
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(color: AppColors.paraColor, text: firstHalf)
          : Column(
        children: [
          SmallText(size: Dimensions.height16, color: AppColors.paraColor, text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(color: AppColors.mainColor, text: "Show more"),
                Icon(hiddenText?(Icons.arrow_drop_down):(Icons.arrow_drop_up), color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
