import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class THorizontalButton extends StatelessWidget {
  const THorizontalButton({
    super.key,
    required this.text,
    required this.width,
    required this.textColor,
    required this.backGroundColor,
  });
  final double width;
  final String text;
  final Color backGroundColor,textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor), child:  Text(text,style: TextStyle(
          fontSize: 18,color: textColor,fontWeight: FontWeight.w400))),
    );
  }
}
