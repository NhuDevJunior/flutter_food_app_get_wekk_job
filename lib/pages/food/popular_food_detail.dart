import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/dimensions.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/ExpandableTextWidget.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/app_column.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/app_icon.dart';

import '../../utils/AppColors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.height380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/food1.jpg"
                    )
                  )
                ),
              )
          ),
          // icon
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.height20,
              right: Dimensions.height20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )
          ),
          // introduction
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.height380-30,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.height20,
                  right: Dimensions.height20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.height40),
                      topLeft: Radius.circular(Dimensions.height40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    AppColumn("Chinese Side"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(color: AppColors.titleColor, text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                    Expanded(child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          "Biryani is a mixed rice dish originating among the Muslims of the Indian subcontinent. "
                              "It is made with Indian spices, rice, and usually some type of meat (chicken, beef, goat, lamb, prawn, fish) or in some cases without any meat, and sometimes, in addition, eggs and potatoes.[1]Biryani is one of the most popular dishes in South Asia, as well as among the diaspora from the region. "
                              "Similar dishes are also prepared in other parts of the world such as in Iraq, Thailand, and Malaysia.[2] Biryani is the single most-ordered dish on Indian online food ordering and delivery services The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. "
                              "In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] "
                              "Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals"),
                    ))
                  ],
                )
            ),
          ),
          // expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height140,
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.height60),
                topLeft: Radius.circular(Dimensions.height60))),
        padding: EdgeInsets.only(
            top: Dimensions.height32,
            bottom: Dimensions.height32,
            left: Dimensions.height22,
            right: Dimensions.height22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height22,
                  left: Dimensions.height22,
                  right: Dimensions.height22,
                  bottom: Dimensions.height22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height22),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.height6,),
                  BigText(color: AppColors.paraColor, text: "0", size: Dimensions.height20,),
                  SizedBox(width: Dimensions.height6,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height22,
                  left: Dimensions.height22,
                  right: Dimensions.height22,
                  bottom: Dimensions.height22),
              child: BigText(text: "\$10 | Add to card", color: Colors.white, size: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height22),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }

  PopularFoodDetail();
}