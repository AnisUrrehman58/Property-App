import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants/colors.dart';

class ABookmarkButton extends StatelessWidget {
  const ABookmarkButton({
    super.key,  this.onPressed,
  });
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 6.h,
        width: 13.w,
        decoration: BoxDecoration(
            color:TColors.whiteGrey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: IconButton(onPressed: onPressed, icon: const Image(image: AssetImage('Assets/Icons/bookmark.png'))));
  }
}
