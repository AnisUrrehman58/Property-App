import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';

class TCheckBoxTheme{
   TCheckBoxTheme._();
  /// light CheckBoX Theme
   static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
     checkColor: WidgetStateProperty.resolveWith((states)  {
       if(states.contains(WidgetState.selected)){
         return TColors.white;
       }else{
         return TColors.black;
       }
     }),
     fillColor: WidgetStateProperty.resolveWith((states)  {
       if(states.contains(WidgetState.selected)){
         return TColors.primary;
       }else{
         return Colors.transparent;
       }
     }),
   );

   /// Dark CheckBoX Theme


   static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSize.xs)),
     checkColor: WidgetStateProperty.resolveWith((states)  {
       if(states.contains(WidgetState.selected)){
         return TColors.white;
       }else{
         return TColors.black;
       }
     }),
     fillColor: WidgetStateProperty.resolveWith((states)  {
       if(states.contains(WidgetState.selected)){
         return TColors.primary;
       }else{
         return Colors.transparent;
       }
     }),
   );

}