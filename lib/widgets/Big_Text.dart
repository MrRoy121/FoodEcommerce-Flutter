import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:foodpanda/values/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow to;
  BigText({Key? key, required this.text, this.size=0, this.to = TextOverflow.ellipsis, this.color = const Color(0xFF332d2b)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: to,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
