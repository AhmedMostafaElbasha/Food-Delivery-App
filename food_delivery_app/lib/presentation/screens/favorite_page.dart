import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/constants/constants.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppTextDisplay(
          text: "Favorite Page",
          textStyle: AppTextStyles.regularBold,
        ),
      ),
    );
  }
}
