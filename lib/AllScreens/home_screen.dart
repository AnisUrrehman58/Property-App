import 'package:flutter/material.dart';
import 'package:property_app/AllScreens/DetailScreen/detail.dart';
import 'package:property_app/CustomWidgets/label_text.dart';
import 'package:property_app/utils/constants/colors.dart';
import 'package:property_app/utils/constants/size.dart';
import 'package:sizer/sizer.dart';

import '../CustomWidgets/bookmark_button.dart';
import '../CustomWidgets/crafts_house.dart';
import '../utils/helpers/helper_functions.dart';
import 'horizontal_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);

    return   Scaffold(
      /// AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding:  EdgeInsets.only(left: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location',style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 17)),
              Text('Los Angeles, CA',style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 18)),
            ],
          ),
        ),
        actions:  [Padding(
          padding: EdgeInsets.only(right: 8.w),
          child:  ABookmarkButton(onPressed: (){},),
        )]),

      body:  SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Discover Best',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24)),
                  Text('Suitable Property',style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 24)),
                ],
              ),
              SizedBox(height: 2.h),
              /// Horizontal Button
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const THorizontalButton(width: 22, backGroundColor: TColors.darkGrey, textColor: TColors.white, text: 'House',),
                    SizedBox(width: 4.w),

                    const THorizontalButton(width: 40,backGroundColor: TColors.whiteGrey, textColor: TColors.dark, text: 'Apartment',),
                    SizedBox(width: 4.w),

                    const THorizontalButton(width: 22, backGroundColor: TColors.whiteGrey, textColor: TColors.dark, text: 'Flot',),
                  ],
                ),
              ),
              SizedBox(height: 2.h),

              /// Craftsman House Card
              const Row(
                children: [LabelText(text: 'Best for you')]),
              SizedBox(height: 1.h),

              const CraftsHouseCard(image: 'Assets/House_Image/Craft_house.png'),
              SizedBox(height: 2.h),

              const LabelText(text: 'Nearby your location'),

              SizedBox(height: 1.h),
              /// Ranch Home --
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DetailScreen())
                  );
                },
                child: Container(
                  height: 13.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: TColors.whiteGrey,
                  ),
                  child: Row(
                    children: [
                      InteractiveViewer(
                          minScale: 1.0,
                          maxScale: 5.0,
                          child: Image.asset('Assets/House_Image/Ranch_Home.png',fit: BoxFit.cover,height: 13.h,)),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('RANCH HOME',style: Theme.of(context).textTheme.labelLarge),
                            SizedBox(height: 1.h),
                            Text('520 N Boundary Are Los Angeles',
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w600,fontSize: 11)),
                            SizedBox(height: 1.h),

                            Row(
                              children: [
                                /// #1
                                Image.asset('Assets/Icons/bed.png',height: 2.2.h),
                                SizedBox(width: 1.0.w),
                                Text('4 Beds',style: TextStyle(fontSize: 11,color: dark? TColors.light : TColors.textLite)),

                                SizedBox(width: 2.5.w),

                                /// #2
                                Image.asset('Assets/Icons/bath.png',height: 2.2.h),
                                SizedBox(width: 1.w),
                                Text('4 Baths',style: TextStyle(fontSize: 11,color: dark? TColors.light : TColors.textLite)),

                                SizedBox(width: 2.5.w),

                                /// #3
                                Image.asset('Assets/Icons/car.png',height: 2.2.h),
                                SizedBox(width: 1.w),
                                Text('1 Garage',style: TextStyle(fontSize: 11,color: dark? TColors.light : TColors.textLite)),

                              ],
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10.h,)

            ],
          ),
        ),
      ),
    );
  }
}







