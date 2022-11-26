import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/big_text.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/icon_and_text_widget.dart';
import 'package:flutter_food_shop_app_get_well_job/widgets/small_text.dart';

import '../utils/AppColors.dart';

class FoodPageBody extends StatefulWidget {

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();

  FoodPageBody();

}

class _FoodPageBodyState extends State<FoodPageBody>{
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  var _height = 220;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current value is"+ _currPageValue.toString());
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
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      )
    ]);
  }

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
            height: 220,
            margin: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
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
              height: 100,
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(color: AppColors.colorDarkPrimary, text: "Chinese Side"),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,)),
                        ),
                        SizedBox(width: 10,),
                        SmallText(color: AppColors.paraColor, text: "4.5"),
                        SizedBox(width: 10,),
                        SmallText(color: AppColors.paraColor, text: "1287"),
                        SizedBox(width: 10,),
                        SmallText(color: AppColors.paraColor, text: "comments")
                      ],
                    ),
                    SizedBox(height: 10),
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
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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