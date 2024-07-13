import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants/colors.dart';


class ASocialBox extends StatelessWidget {
  const ASocialBox({
    super.key, required this.image,
  });
  final  String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 7.h,
        width: 15.w,
        decoration: BoxDecoration(
          color: TColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: TColors.grey),
            image:  DecorationImage(
                image: AssetImage(image),
            )
        ),
      ),
    );
  }
}


