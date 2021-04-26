import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/presentation/widgets/bought_food_item.dart';
import 'package:food_delivery_app/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageAppBar(),
              FoodCategoryList(),
              SearchBar(),
              _frequentlyBoughtFoodTitleBar(),
              _frequentBoughtFoodsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _frequentBoughtFoodsList() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(4),
      ),
      child: Container(
        height: ScreenUtil().screenHeight * 0.6,
        child: ListView.builder(
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return BoughtFoodItem(foodItems[index]);
          },
        ),
      ),
    );
  }

  Widget _frequentlyBoughtFoodTitleBar() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextDisplay(
            translation: AppStrings.frequentlyBoughtFoodsTitle,
            textStyle: AppTextStyles.regularBold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          _viewAllButton(),
        ],
      ),
    );
  }

  Widget _viewAllButton() {
    return GestureDetector(
      onTap: () {},
      child: AppTextDisplay(
        translation: AppStrings.viewAllButton,
        textStyle: AppTextStyles.seeAll,
      ),
    );
  }
}
