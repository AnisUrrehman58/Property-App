import 'package:flutter/material.dart';
import 'package:property_app/AllScreens/home_screen.dart';
import 'package:property_app/CustomWidgets/BottomCard/bottom_card.dart';
import 'package:property_app/CustomWidgets/bookmark_button.dart';
import 'package:property_app/CustomWidgets/label_text.dart';
import 'package:property_app/utils/constants/colors.dart';
import 'package:property_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

import '../../CustomWidgets/gallery_box.dart';
import '../../CustomWidgets/text_widgets.dart';
import '../WishList/wish_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      /// App Bar
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Detail',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 24)),
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
                  MaterialPageRoute(builder: (_) => const HomeScreen())
                );
              }, child:
              Icon(Icons.arrow_back_ios,color: dark? TColors.light : TColors.dark,size: 25)))]),

      /// Body --
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 15),

          /// --Image
          child: Column(
            children: [
              Container(
                height: 38.h,
                width: double.infinity,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  const DecorationImage(
                    image: AssetImage('Assets/House_Image/Craft_House2.png'),
                      fit: BoxFit.cover))),

            SizedBox(height: 3.h),

            /// Craft House Detail
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CRAFTSMAN HOUSE',style: Theme.of(context).textTheme.headlineSmall),
                      SizedBox(height: 1.5.w),
                      const Text('520 N Boundary Are Los Angeles'),
                      SizedBox(height: 1.5.w),
                      /// House Icons
                      Row(
                        children: [
                          Image.asset('Assets/Icons/bed.png',height: 4.h),
                          const TextLightWidgets(text: '4 Beds'),
                          SizedBox(width: 7.w),
                          Image.asset('Assets/Icons/bath.png',height: 4.h),
                          const TextLightWidgets(text: '4 Baths'),
                          SizedBox(width: 7.w),
                          Image.asset('Assets/Icons/car.png',height: 4.h),
                          const TextLightWidgets(text: '1 Garage')
                        ],
                      ),


                    ],
                  ),
                   ABookmarkButton(onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => const WishList()));
                   },)
                ],
              ),
              SizedBox(height: 2.h),

              /// Profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                     children: [
                       const CircleAvatar(
                         radius: 32,
                         backgroundImage: AssetImage('Assets/logo/Profile_image.jpg'),
                       ),
                       SizedBox(width: 4.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Anis-Ur-Rehman',style: Theme.of(context).textTheme.labelLarge),
                            const Text('Owner Craftsman House',style: TextStyle(fontSize: 12,color: TColors.textLite),)
                          ],
                        ),
                     ],
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 5.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                          color: TColors.darkGrey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.call,color: TColors.white)),
                            const Text('Call',style: TextStyle(color: TColors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              SizedBox(height: 2.h),

              /// Read more Text
              const ReadMoreText(
                  'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage. amazing curb appeal and entertain area water views. Tons of built-ins & extras. 4 bedrooms. 2 bathrooms. 1 garage',
               trimLines: 3,
                trimMode: TrimMode.Line,
               trimCollapsedText: 'Read More',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: TColors.primary),
                lessStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: TColors.primary),
              ),
              SizedBox(height: 1.3.h),

              const Row(children: [LabelText(text: 'Gallery')]),
              SizedBox(height: 0.7.h),
               Row(
                children: [
                  const GalleryBox(imageUrl: 'Assets/GalleryBoxImage/BoxImage1.png'),
                  SizedBox(width: 5.w),
                  const GalleryBox(imageUrl: 'Assets/GalleryBoxImage/BoxImage2.png'),
                  SizedBox(width: 5.w),
                  const GalleryBox(imageUrl: 'Assets/GalleryBoxImage/BoxImage3.png'),
                  SizedBox(width: 5.w),
                  const GalleryBox(imageUrl: 'Assets/GalleryBoxImage/BoxImage4.jpg'),
                ],
              ),
              SizedBox(height: 5.h),

            ],
          ),
        ),
      ),
      bottomNavigationBar:   Padding(
        padding:  EdgeInsets.only(left: 6.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                Text(
                'Price',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 12.sp),  // Adjust text size based on screen size
                overflow: TextOverflow.ellipsis,  // Ensure text does not overflow
              ),
              Text(
                '\$5990000',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 18.sp),  // Adjust text size based on screen size
                overflow: TextOverflow.ellipsis,)  // Ensure
                ],
              ),
            ),
            const TBottomAddToCart(),
          ],
        ),
      )
    );
  }
}



