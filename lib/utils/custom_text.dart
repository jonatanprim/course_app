import 'package:course_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomText{

  //Large
  static TextStyle titleXLarge(BuildContext context, int color){
    return Theme.of(context).textTheme.displaySmall!.copyWith(
      fontSize: 28.0,
      color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
    );
  }

  static TextStyle titleLarge(BuildContext context, int color){
    return Theme.of(context).textTheme.titleLarge!.copyWith(
    color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
    );
  }

  static TextStyle titleMedium(BuildContext context, int color){
    return Theme.of(context).textTheme.titleMedium!.copyWith(
        color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.bold
    );
  }

  static TextStyle titleSmall(BuildContext context, int color){
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.bold
    );
  }

  //Body
  static TextStyle bodyLarge(BuildContext context, int color){
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
      color: color == 1 ? Colors.white : CustomColors.accent,
    );
  }

  static TextStyle bodyMedium(BuildContext context, int color){
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
    );
  }

  static TextStyle bodySmall(BuildContext context, int color){
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
    );
  }


  //Button
  static TextStyle button(BuildContext context, int color){
    return Theme.of(context).textTheme.button!.copyWith(
      color: color == 1 ? Colors.white : Colors.black.withOpacity(0.8),
    );
  }


}
