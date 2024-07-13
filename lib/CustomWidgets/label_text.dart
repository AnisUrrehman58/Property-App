import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.labelLarge
        ?.copyWith(fontSize: 19,fontWeight: FontWeight.w400));
  }
}
