import 'package:flutter/material.dart';
import 'package:flutter_food_shop_app_get_well_job/utils/AppColors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Country"),
                      Text("City")
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(Icons.search, color: Colors.white,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
