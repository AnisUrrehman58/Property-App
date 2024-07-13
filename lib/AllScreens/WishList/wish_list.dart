import 'package:flutter/material.dart';
import 'package:property_app/AllScreens/DetailScreen/detail.dart';
import 'package:property_app/CustomWidgets/crafts_house.dart';
import 'package:property_app/utils/constants/size.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants/colors.dart';
import '../../utils/helpers/helper_functions.dart';
class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      /// App Bar
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('WishList',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24)),
          actions: [
            Container(
                padding: EdgeInsets.only(left: 2.w),
                margin: EdgeInsets.only(right: 6.w),
                height: 6.h,
                width: 13.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: TColors.whiteGrey),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const DetailScreen())
                  );
                }, child:
                Icon(Icons.arrow_back_ios,color: dark? TColors.light : TColors.dark,size: 25)))]),

      /// body
      body:  SingleChildScrollView(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              const CraftsHouseCard(image: 'Assets/House_Image/Craft_house.png'),
              SizedBox(height: 3.h),
              const CraftsHouseCard(image: 'Assets/House_Image/Craft_House2.png'),
            ],
          ),
        ),
      ),

    );
  }
}
