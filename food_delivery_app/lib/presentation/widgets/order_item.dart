import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/constants/constants.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(10),
          vertical: ScreenUtil().setHeight(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: ScreenUtil().setWidth(20),
              ),
              child: Container(
                height: ScreenUtil().setHeight(75),
                width: ScreenUtil().setWidth(45),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: AppColors.lightGray,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        AppIcons.keyboardArrowUp,
                        color: AppColors.lightGray,
                      ),
                    ),
                    AppTextDisplay(
                      text: '0',
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: AppColors.lightGray,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        AppIcons.keyboardArrowDown,
                        color: AppColors.lightGray,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: ScreenUtil().setWidth(20),
              ),
              child: Container(
                height: ScreenUtil().setHeight(70),
                width: ScreenUtil().setWidth(70),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImagePaths.lunch),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black,
                      blurRadius: 5.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: ScreenUtil().setHeight(5),
                  ),
                  child: AppTextDisplay(
                    text: "Grilled Chicken",
                    textStyle: AppTextStyles.regularBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: ScreenUtil().setHeight(5),
                  ),
                  child: AppTextDisplay(
                    text: "\$3.0",
                    textStyle: AppTextStyles.seeAll,
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(120),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: ScreenUtil().setWidth(5),
                            ),
                            child: AppTextDisplay(
                              text: "Chicken",
                              textStyle: AppTextStyles.regularBold.copyWith(
                                color: AppColors.lightGray,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: ScreenUtil().setWidth(10),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: AppTextDisplay(
                                text: "x",
                                textStyle: AppTextStyles.regularBold.copyWith(
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
