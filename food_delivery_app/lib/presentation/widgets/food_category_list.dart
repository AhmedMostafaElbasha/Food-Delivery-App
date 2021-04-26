import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/presentation/presentation.dart';

class FoodCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(25)),
      child: Container(
        height: ScreenUtil().setHeight(65),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return FoodCategoryItem(categories[index]);
          },
        ),
      ),
    );
  }
}
