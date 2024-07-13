import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/size.dart';
import '../../utils/helpers/helper_functions.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: TSize.defaultSpace/2,horizontal: TSize.defaultSpace),
      decoration: BoxDecoration(
          color: dark? TColors.darkGrey:TColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSize.cardRadiusLg),
            topRight: Radius.circular(TSize.cardRadiusLg),
          )
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          SizedBox(
            height: 6.h,
            width: 35.w,
            child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSize.md),
                  backgroundColor: TColors.darkGrey,
                  side: const BorderSide(color: TColors.darkGrey)

              ), child: const Text('BUY NOW',style: TextStyle(fontSize: 13)),
            ),
          )
        ],
      ),
    );
  }
}


