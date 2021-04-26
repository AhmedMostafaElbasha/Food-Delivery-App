import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/constants.dart';

class SearchBar extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 5.0,
        child: TextField(
          style: AppTextStyles.regularBold,
          cursorColor: AppColors.blueAccent,
          controller: searchController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(14),
              vertical: ScreenUtil().setHeight(14),
            ),
            border: InputBorder.none,
            suffixIcon: _searchButton(),
            hintText: AppStrings.searchHint,
          ),
        ),
      ),
    );
  }

  GestureDetector _searchButton() {
    return GestureDetector(
      onTap: () {},
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(30),
        child: Icon(
          AppIcons.search,
          color: AppColors.black,
        ),
      ),
    );
  }
}
