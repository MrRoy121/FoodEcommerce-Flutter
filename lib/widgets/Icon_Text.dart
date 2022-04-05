import 'package:flutter/cupertino.dart';
import 'package:foodpanda/values/dimensions.dart';
import 'package:foodpanda/widgets/Small_Text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData i;
  final String text;
  final Color icolor ;
  const IconTextWidget({Key? key, required this.i, required this.text, required this.icolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(i, color: icolor,size: Dimensions.icon24,),
        SizedBox(width: 5,),
        SmallText(text: text),
      ],
    );
  }
}
