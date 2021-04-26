import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle get mainHeading {
    return TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  }

  static TextStyle get regularBold {
    return TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle get seeAll {
    return regularBold.copyWith(
      color: AppColors.orangeAccent,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }
}
