import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodpanda/values/dimensions.dart';
import 'package:foodpanda/widgets/App_colomn.dart';
import 'package:foodpanda/widgets/App_icon.dart';
import 'package:foodpanda/widgets/Expandable_Text.dart';

import '../../widgets/Big_Text.dart';
import '../../widgets/Icon_Text.dart';
import '../../widgets/Small_Text.dart';
import '../../widgets/color.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popdetailsimg,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/food03.jpg"
                  )
                )
              ),
          ),
          ),
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart),
              ],
              ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popdetailsimg-10,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radious20),topLeft: Radius.circular(Dimensions.radious20),),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColomn(text: "Doi Fuchka",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height10,),
                    Expanded(child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.only(bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
                            child: ExpandableText(text: "Lorem Ipsum isContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of(The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,, comes from a line in section 1.10.32. simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")))
                    )],
                ),
          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomheightbar,
        padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radious20*2), topRight: Radius.circular(Dimensions.radious20*2))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width30, right: Dimensions.width30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radious20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black54,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0",size: Dimensions.font16),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: Colors.black54,),

                ],
              ),
            ),
        Container(
          child: BigText(text: "\$10 | Add To Cart", color: Colors.white,size: Dimensions.font16,),
          padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width30, right: Dimensions.width30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radious20),
            color: AppColor.maincolor,
          ),
        )],
        ),
      ),
    );
  }
}
