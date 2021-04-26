import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:food_delivery_app/constants/app_text_styles.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/presentation/presentation.dart';

class FoodCategoryItem extends StatelessWidget {
  final Category category;

  FoodCategoryItem(this.category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(20),
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(0),
            horizontal: ScreenUtil().setWidth(20),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(category.imagePath),
                height: ScreenUtil().setHeight(40),
                width: ScreenUtil().setWidth(40),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(14),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextDisplay(
                      translation: category.categoryName,
                      textStyle: AppTextStyles.regularBold,
                    ),
                    AppTextDisplay(
                      text: "${category.numberOfItems} items",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
