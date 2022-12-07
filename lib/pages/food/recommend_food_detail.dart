import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/AppColors.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/dimensions.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/ExpandableTextWidget.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/app_icon.dart';

import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height26,),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.height22),
                        topRight: Radius.circular(Dimensions.height22))),
                child: Center(child: BigText(color: AppColors.titleColor, text: "Sliver app bar",),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: Dimensions.height12, bottom: Dimensions.height22),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.height350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/food1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.height22, right: Dimensions.height22),
                  child: ExpandableTextWidget("Biryani is a mixed rice dish originating among the Muslims of the Indian subcontinent. "
                      "It is made with Indian spices, rice, and usually some type of meat (chicken, beef, goat, lamb, prawn, fish) or in some cases without any meat, and sometimes, in addition, eggs and potatoes.[1]Biryani is one of the most popular dishes in South Asia, as well as among the diaspora from the region. "
                      "Similar dishes are also prepared in other parts of the world such as in Iraq, Thailand, and Malaysia.[2] Biryani is the single most-ordered dish on Indian online food ordering and delivery services The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. "
                      "In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] "
                      "Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals.Biryani is a mixed rice dish originating among the Muslims of the Indian subcontinent. "
                      "It is made with Indian spices, rice, and usually some type of meat (chicken, beef, goat, lamb, prawn, fish) or in some cases without any meat, and sometimes, in addition, eggs and potatoes.[1]Biryani is one of the most popular dishes in South Asia, as well as among the diaspora from the region. "
                      "Similar dishes are also prepared in other parts of the world such as in Iraq, Thailand, and Malaysia.[2] Biryani is the single most-ordered dish on Indian online food ordering and delivery services The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. "
                      "In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] "
                      "Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals"),
                ),
                // Container(
                //   margin: EdgeInsets.only(left: Dimensions.height22, right: Dimensions.height22),
                //   child: Text(
                //       "Biryani is a mixed rice dish originating among the Muslims of the Indian subcontinent. "
                //           "It is made with Indian spices, rice, and usually some type of meat (chicken, beef, goat, lamb, prawn, fish) or in some cases without any meat, and sometimes, in addition, eggs and potatoes.[1]Biryani is one of the most popular dishes in South Asia, as well as among the diaspora from the region. "
                //           "Similar dishes are also prepared in other parts of the world such as in Iraq, Thailand, and Malaysia.[2] Biryani is the single most-ordered dish on Indian online food ordering and delivery services The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. "
                //           "In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] "
                //           "Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals.Biryani is a mixed rice dish originating among the Muslims of the Indian subcontinent. "
                //           "It is made with Indian spices, rice, and usually some type of meat (chicken, beef, goat, lamb, prawn, fish) or in some cases without any meat, and sometimes, in addition, eggs and potatoes.[1]Biryani is one of the most popular dishes in South Asia, as well as among the diaspora from the region. "
                //           "Similar dishes are also prepared in other parts of the world such as in Iraq, Thailand, and Malaysia.[2] Biryani is the single most-ordered dish on Indian online food ordering and delivery services The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. "
                //           "In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] "
                //           "Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals"
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.height60,
                right: Dimensions.height60,
                top: Dimensions.height12,
                bottom: Dimensions.height12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove, backgroundColor: AppColors.mainColor,),
                BigText(color: AppColors.titleColor, text: "\$12.88"+" X "+"0"),

                AppIcon(icon: Icons.add, backgroundColor: AppColors.mainColor)
              ],
            ),
          )
        ],
      ),
    );
  }

}