import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/values/dimensions.dart';
import 'package:foodpanda/widgets/Small_Text.dart';

import 'color.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String first, second;
  bool hiddenText = true;
  double textHeight = Dimensions.screenheight/5;


  @override
  void initState() {
    super.initState();
    if(widget.text.length>=textHeight){
      first = widget.text.substring(0, textHeight.toInt());
      second = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      first = widget.text;
      second = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: second.isEmpty?SmallText(height:1.2,color: AppColor.blackTextcolor,size: Dimensions.font16,text: first):Column(
        children: [
          SmallText(height:1.2,size: Dimensions.font16,text: hiddenText?(first+"....."):(first+second)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },child: Row(

              children: [
                SmallText(text: "Show More..",color: AppColor.maincolor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColor.maincolor,)
              ],
          )
          )
        ],
      ),
    );
  }
}
