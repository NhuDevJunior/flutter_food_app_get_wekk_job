
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/big_text.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/icon_and_text_widget.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/small_text.dart';

import '../utils/AppColors.dart';
import '../utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();

  FoodPageBody();

}

class _FoodPageBodyState extends State<FoodPageBody>{
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  var _height = Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // slide section
      Container(
        margin: EdgeInsets.only(top: Dimensions.height12),
        height: Dimensions.pageViewTotalContainer,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      // dot section
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(4.0),
          activeSize: const Size(12.0, 6.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height10)),
        ),
      ),
      SizedBox(height: Dimensions.height33,),
      Container(
        margin: EdgeInsets.only(left: Dimensions.height33),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(color: AppColors.titleColor, text: "Popular"),
            SizedBox(width: Dimensions.height12,),
            Container(
              margin: EdgeInsets.only(bottom: 3),
              child: BigText(color: Colors.black26, text: "."),
            ),
            SizedBox(width: Dimensions.height12,),
            Container(
              margin: EdgeInsets.only(bottom: 4),
              child: SmallText(color: Colors.black26, text: "Food pairing",),
            )

          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: Dimensions.height12),
        child: ListView.builder(
        padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(left: Dimensions.height22, right: Dimensions.height22, bottom: Dimensions.height12),
              child: Row(
                children: [
                  Container(
                    width: Dimensions.height130,
                    height: Dimensions.height130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      color: Colors.white38,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/food2.jpg")
                      )
                    ),

                  ),
                  Expanded(
                      child: Container(
                    height: Dimensions.height120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.height12), bottomRight: Radius.circular(Dimensions.height12)),
                        color: Colors.white
                    ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.height12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(color: AppColors.titleColor, text: "Nutritious fruit meal color"),
                              SizedBox(height: Dimensions.height10,),
                              SmallText(color: AppColors.paraColor, text: "With chinese characteristic"),
                              SizedBox(height: Dimensions.height10,),
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
                        ),
                  )
                  )
                ],
              ),
            );
          },


        ),
      )
    ]);
  }
// item section
  Widget _buildPageItem(int position) {
    Matrix4 matrix = new Matrix4.identity();
    if (position == _currPageValue.floor()) {
      var currScale = 1-(_currPageValue-position)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    } else if(position == _currPageValue.floor()+1) {
      var currScale = _scaleFactor + (_currPageValue-position+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if(position == _currPageValue.floor()-1) {
      var currScale = 1-(_currPageValue-position)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }
    return Transform(transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height36),
                color: position.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/food2.jpg"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageTextContainer,
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height12, left: Dimensions.height17, right: Dimensions.height17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(color: AppColors.colorDarkPrimary, text: "Chinese Side"),
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
              ),
              margin: EdgeInsets.only(left: Dimensions.height22, right: Dimensions.height22, bottom: Dimensions.height18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(1, 5)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                    )
                  ]
              ),
            ),
          )
        ],
      ),

    );
  }
}