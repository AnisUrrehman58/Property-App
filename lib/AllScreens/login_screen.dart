import 'package:flutter/material.dart';
import 'package:property_app/AllScreens/home_screen.dart';
import 'package:property_app/utils/constants/colors.dart';
import 'package:property_app/utils/helpers/helper_functions.dart';
import 'package:sizer/sizer.dart';

import '../CustomWidgets/social_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  /// Variable create for check Box
  bool _isChecked = false;
  /// For visibility Password
  bool _isVisibility = true;

  @override
  Widget build(BuildContext context) {
      final dark = THelperFunctions.isDarkMode(context);
      return  Scaffold(
        appBar: AppBar(
          // leading: IconButton(onPressed: (){},
          //     icon: Icon(Icons.arrow_back,color: dark? TColors.light: TColors.dark)),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      /// Logo Image
                        child: Container(
                          height: 30.h,
                          width: 90.w,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(('Assets/logo/Login_Logo.png')))),
                        )
                    ),
                    Text('Login To Your Account',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 26)),
                    SizedBox(height: 2.5.h),

                    ///  -- Email Form --
                    TextFormField(
                      decoration:  InputDecoration(
                          hintText: 'Email',hintStyle: TextStyle(color: dark? TColors.light: TColors.dark),
                          prefixIcon: Icon(Icons.email_rounded,color: dark? TColors.dark: TColors.dark),
                          filled: true,
                          fillColor: TColors.lightWhite,
                          focusedBorder:   OutlineInputBorder(
                              borderSide: const BorderSide(color: TColors.grey),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          enabledBorder:  OutlineInputBorder(
                              borderSide: const BorderSide(color: TColors.grey),
                              borderRadius: BorderRadius.circular(15)

                          )
                      ),
                    ),
                    SizedBox(height: 2.h),

                    /// -- Password Form --
                    TextFormField(
                      obscureText: _isVisibility,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: TColors.lightWhite,
                          hintText: 'Password',hintStyle: TextStyle(color: dark? TColors.light :TColors.dark),
                          prefixIcon:  Icon(Icons.lock,color: dark? TColors.light: TColors.dark),
                          suffixIcon: IconButton(icon:  _isVisibility? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                          color: dark? TColors.light: TColors.dark,
                          onPressed: (){
                            setState(() {
                              _isVisibility = !_isVisibility;
                            });
                          },
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: TColors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: TColors.grey)
                          )
                      ),
                    ),

                    SizedBox(height: 0.5.h),

                    /// Checked Box
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(value: _isChecked,onChanged: (bool? value) {
                            setState(() {_isChecked = value ?? false;});
                          }),
                        const Text('Remember me',style: TextStyle(fontWeight: FontWeight.w500))]),
                    SizedBox(height: 0.5.w),

                    /// Sign In Button
                    SizedBox(
                      width: double.infinity.w,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomeScreen()));
                      },style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary,shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                      ), child:  Text('Sign in',style: TextStyle(
                        color: dark? TColors.light : TColors.light))),
                    ),

                    SizedBox(height: 2.5.h),
                    /// Forgot Password
                    const Text('Forgot the Password',style: TextStyle(color: TColors.lightPrimary,fontWeight: FontWeight.w600)),

                    SizedBox(height: 3.h),
                    /// Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(child: Divider(thickness: 0.7,indent: 2.0.w,endIndent: 5)),
                        const Text('or continue with',style: TextStyle(color: TColors.textLite,
                            fontWeight: FontWeight.w500,fontSize: 17)),
                        Flexible(child: Divider(thickness: 0.7,indent: 1.3.w,endIndent: 5)),

                      ],
                    ),
                    SizedBox(height: 2.h),

                    /// Social Auth
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          const ASocialBox(image: 'Assets/Social_Logon/faceBook_logo.png',),
                          SizedBox(width: 10.w),

                          const ASocialBox( image: 'Assets/Social_Logon/google.jpg'),
                          SizedBox(width: 10.w),

                          const ASocialBox(image: 'Assets/Social_Logon/Apple_logo.webp')
                        ],
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",style: TextStyle(color: TColors.textLite)),
                        TextButton(onPressed: (){}, child: const Text('Sign up',style: TextStyle(color: TColors.primary,fontSize: 15),))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }




