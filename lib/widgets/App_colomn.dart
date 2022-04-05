import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../values/dimensions.dart';
import 'Big_Text.dart';
import 'Icon_Text.dart';
import 'Small_Text.dart';
import 'color.dart';

class AppColomn extends StatelessWidget {
  final String text;
  const AppColomn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(children: List.generate(5, (index) => Icon(Icons.star, color: AppColor.maincolor, size: 15,)),),
            SizedBox(width: 10),
            SmallText(text: "4.5"),
            SizedBox(width: 10),
            SmallText(text: "1287"),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(i: Icons.circle_sharp, text: "Normal", icolor: AppColor.iconcolor1),
            SizedBox(width: 10,),
            IconTextWidget(i: Icons.location_on, text: "1.7km", icolor: AppColor.maincolor),
            SizedBox(width: 10,),
            IconTextWidget(i: Icons.access_time_rounded, text: "32mins", icolor: AppColor.iconcolor2),
            SizedBox(width: 1,),
          ],
        )
      ],
    );
  }
}
