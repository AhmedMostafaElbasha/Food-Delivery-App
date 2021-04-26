import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/utilities/utilities.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/data/data.dart';

class BoughtFoodItem extends StatelessWidget {
  final Food food;

  BoughtFoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: _foodImage(context),
      ),
    );
  }

  Widget _foodImage(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(260),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(food.imagePath),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
      child: _foodDetails(context),
    );
  }

  Widget _foodDetails(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.black,
            Colors.black12,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(12),
              top: ScreenUtil().setHeight(8),
              bottom: ScreenUtil().setHeight(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _foodName(),
                _foodRating(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(10),
              right: ScreenUtil().setWidth(16),
              bottom: ScreenUtil().setHeight(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppTextDisplay(
                  text: food.price.toString(),
                  textStyle: AppTextStyles.regularBold.copyWith(
                    fontSize: 18,
                    color: AppColors.orangeAccent,
                  ),
                ),
                AppTextDisplay(
                  translation: AppStrings.minOrder,
                  textStyle: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _foodRating(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SmoothStarRating(
          allowHalfRating: true,
          onRated: (v) {},
          starCount: 5,
          rating: food.ratingRate,
          size: 24.0,
          isReadOnly: true,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_half,
          color: AppColors.blueAccent,
          borderColor: AppColors.blueAccent,
          spacing: 0.0,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(2),
        ),
        _numberOfReviews(context),
      ],
    );
  }

  AppTextDisplay _numberOfReviews(BuildContext context) {
    return AppTextDisplay(
      text:
          '(${food.ratings} ${AppLocalizations.of(context).translate(AppStrings.reviews)})',
      textStyle: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  AppTextDisplay _foodName() {
    return AppTextDisplay(
      text: food.name,
      textStyle: AppTextStyles.regularBold.copyWith(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}
