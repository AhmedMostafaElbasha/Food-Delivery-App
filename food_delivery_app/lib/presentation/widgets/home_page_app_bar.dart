import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/presentation/presentation.dart';

class HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _mainHeading(AppStrings.whatWouldHeading),
              _mainHeading(AppStrings.youLikeToEatHeading),
            ],
          ),
          _notificationsButton(),
        ],
      ),
    );
  }

  Widget _mainHeading(String text) {
    return AppTextDisplay(
      translation: text,
      textStyle: AppTextStyles.mainHeading,
    );
  }

  Widget _notificationsButton() {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        AppIcons.notifications,
        size: 30,
        color: AppColors.blueAccent,
      ),
    );
  }
}
