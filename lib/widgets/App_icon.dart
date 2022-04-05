import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/values/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bg, ibg;
  final double size,isize;
  const AppIcon({Key? key, required this.icon,  this.bg = const Color(0xfffcf4e4), this.ibg = const Color(0xff756d54), this.size = 40, this.isize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(size/2),
      ),
      child: Icon(icon,color: ibg,size: isize,),
    );
  }
}
