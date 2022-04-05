import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  SmallText({Key? key, required this.text, this.size=12, this.height = 1.2, this.color = const Color(0xFFccc7c5)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Roboto',
        height: height,
      ),
    );
  }
}