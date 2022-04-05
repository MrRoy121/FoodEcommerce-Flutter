import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/values/dimensions.dart';
import 'package:foodpanda/widgets/Big_Text.dart';
import 'package:foodpanda/widgets/Small_Text.dart';
import 'package:foodpanda/widgets/color.dart';

import 'main_food_body.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.width15),
              padding: EdgeInsets.only(right: Dimensions.width20, left: Dimensions.width20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Bangladesh", color: AppColor.maincolor,size: 25),
                      Row(
                        children: [
                          SmallText(text: "Moulvibazar",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.height45,
                      width: Dimensions.height45,
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.icon24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radious15),
                        color: AppColor.maincolor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
            Expanded(child: SingleChildScrollView(
              child: MainFoodBody(),
            ),),
            ],
        )
    );
  }
}

