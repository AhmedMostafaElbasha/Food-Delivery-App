import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/constants/constants.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTextDisplay(
          translation: AppStrings.ordersPageAppBarTitle,
          textStyle: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(10),
            ),
            child: Container(
              height: ScreenUtil().screenHeight * .5,
              child: ListView(
                children: [
                  OrderItem(),
                  OrderItem(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _totalPriceDisplay(),
    );
  }

  Widget _totalPriceDisplay() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(10),
      ),
      child: Container(
        height: ScreenUtil().setHeight(220),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
              child: _totalPriceDetailDisplay(
                AppStrings.subTotal,
                "23.0",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
              child: _totalPriceDetailDisplay(
                AppStrings.discount,
                "10.0",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
              child: _totalPriceDetailDisplay(
                AppStrings.tax,
                "0.5",
              ),
            ),
            Divider(
              color: AppColors.lightGray,
              height: ScreenUtil().setHeight(2),
            ),
            Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
              child: _totalPriceDetailDisplay(
                AppStrings.total,
                "26.5",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(20),
                bottom: ScreenUtil().setHeight(20),
              ),
              child: _proceedToCheckoutButton(),
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton _proceedToCheckoutButton() {
    return MaterialButton(
      onPressed: () {},
      color: AppColors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      minWidth: ScreenUtil().screenWidth,
      height: ScreenUtil().setHeight(50),
      child: AppTextDisplay(
        translation: AppStrings.proceedToCheckout,
        textStyle: AppTextStyles.regularBold.copyWith(
          color: AppColors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _totalPriceDetailDisplay(String title, String value) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextDisplay(
          translation: title,
          textStyle: AppTextStyles.regularBold.copyWith(
            color: AppColors.lightShadeblue,
          ),
        ),
        AppTextDisplay(
          text: value,
          textStyle: AppTextStyles.regularBold.copyWith(
            color: AppColors.shadeCyan,
          ),
        ),
      ],
    );
  }
}
