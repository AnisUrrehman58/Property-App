import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GalleryBox extends StatelessWidget {
  const GalleryBox({
    super.key, required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.5.h,
      width: 18.w,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
          image:  DecorationImage(
              image: AssetImage(imageUrl),fit: BoxFit.cover
          )
      ),

    );
  }
}
