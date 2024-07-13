import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class TextLightWidgets extends StatelessWidget {
  const TextLightWidgets({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: const TextStyle(color: TColors.textLite,fontWeight: FontWeight.w400));
  }
}
