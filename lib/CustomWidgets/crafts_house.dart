import 'package:flutter/material.dart';
import 'package:property_app/CustomWidgets/text_widgets.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants/colors.dart';
import '../utils/helpers/helper_functions.dart';

class CraftsHouseCard extends StatelessWidget {
  const CraftsHouseCard({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);

    return Container(
      height: 43.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: TColors.darkGrey,
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
            child: SizedBox(
              width: double.infinity,
              height: 57.w,
              child: InteractiveViewer(
                  minScale: 1.0,
                  maxScale: 5.0,
                  child: Image.asset(image,fit: BoxFit.cover,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CRAFTSMAN HOUSE',style:TextStyle
                  (color: dark? TColors.grey: TColors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                const TextLightWidgets(text: '520 N Boundary Are Los Angeles'),

                /// House Icons
                Row(
                  children: [
                    Image.asset('Assets/Icons/bed.png',height: 4.h),
                    const TextLightWidgets(text: '4 Beds'),
                    SizedBox(width: 8.w),
                    Image.asset('Assets/Icons/bath.png',height: 4.h),
                    const TextLightWidgets(text: '4 Baths'),
                    SizedBox(width: 8.w),
                    Image.asset('Assets/Icons/car.png',height: 4.h),
                    const TextLightWidgets(text: '1 Garage')
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
