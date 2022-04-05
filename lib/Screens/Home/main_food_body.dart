import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodpanda/values/dimensions.dart';
import 'package:foodpanda/widgets/App_colomn.dart';
import 'package:foodpanda/widgets/Big_Text.dart';
import 'package:foodpanda/widgets/Icon_Text.dart';
import 'package:foodpanda/widgets/Small_Text.dart';
import 'package:foodpanda/widgets/color.dart';

class MainFoodBody extends StatefulWidget {
  const MainFoodBody({Key? key}) : super(key: key);

  @override
  _MainFoodBodyState createState() => _MainFoodBodyState();
}

class _MainFoodBodyState extends State<MainFoodBody> {
  PageController pg = PageController(viewportFraction: 0.85);
  var _currentPageVal = 0.0;
  var _scaleFactor = 0.8;
  var _height = Dimensions.pageViewContaianer;

  @override
  void initState(){
    super.initState();
    pg.addListener(() {
      setState(() {
        _currentPageVal = pg.page!;
      });
    });
  }

  @override
  void dispose(){
    pg.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.fullPageView,
          child: PageView.builder(
              controller: pg,
              itemCount: 6,
              itemBuilder: (context, position){

                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 6,
          position: _currentPageVal,
          decorator: DotsDecorator(
            activeColor: AppColor.maincolor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                //margin: const EdgeInsets.only(bottom: 3),
                child: SmallText(text: "Food Pairing",color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26),
              ),
            ],
          ),
        ),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width30,bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      Container(
                        width: Dimensions.listviewimg,
                        height: Dimensions.listviewimg,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radious20),
                            color: Colors.white30,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/food06.jpg"
                                )
                            )
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: Dimensions.listviewitem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radious20), bottomRight: Radius.circular(Dimensions.radious20)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Nutritious Fruit Meal In China"),
                                SizedBox(height: Dimensions.height10,),
                                SmallText(text: "With Chinese Characteristics"),
                                SizedBox(height: Dimensions.height10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconTextWidget(i: Icons.circle_sharp, text: "Normal", icolor: AppColor.iconcolor1),
                                    SizedBox(width: 10,),
                                    IconTextWidget(i: Icons.location_on, text: "1.7km", icolor: AppColor.maincolor),
                                    SizedBox(width: 10,),
                                    IconTextWidget(i: Icons.access_time_rounded, text: "32mins", icolor: AppColor.iconcolor2),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currentPageVal.floor()){
      var _curScale = 1-(_currentPageVal-index)*(1-_scaleFactor);
    var _curTrans = _height*(1 - _curScale)/2;
      matrix = Matrix4.diagonal3Values(1, _curScale, 1)..setTranslationRaw(0, _curTrans, 0);
    }else if(index == _currentPageVal.floor()+1){
      var _curScale = _scaleFactor+(_currentPageVal-index+1)*(1-_scaleFactor);
      var _curTrans = _height*(1 - _curScale)/2;
      matrix = Matrix4.diagonal3Values(1, _curScale, 1);
      matrix = Matrix4.diagonal3Values(1, _curScale, 1)..setTranslationRaw(0, _curTrans, 0);
    }else if(index == _currentPageVal.floor()-1){
      var _curScale = 1-(_currentPageVal-index)*(1-_scaleFactor);
      var _curTrans = _height*(1 - _curScale)/2;
      matrix = Matrix4.diagonal3Values(1, _curScale, 1);
      matrix = Matrix4.diagonal3Values(1, _curScale, 1)..setTranslationRaw(0, _curTrans, 0);
    }else{
      var _curScale = 0.8;
      var _curTrans = _height*(1 - _scaleFactor)/2;
      matrix = Matrix4.diagonal3Values(1, _curScale, 1)..setTranslationRaw(0, _curTrans, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContaianer,
            margin: EdgeInsets.only(left:  Dimensions.width10, right:  Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radious30),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(
                      "assets/images/food02.jpg"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageViewTextContaianer,
                margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radious20),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0,5)
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5,0)
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5,0)
                      ),
                    ]
                    ),
              child: Container(

                padding: EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
                child: AppColomn(text: "Hello",),
              ),
              ),
          )
        ],
      ),
    );
  }
}

