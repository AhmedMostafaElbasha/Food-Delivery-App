import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/utilities/app_localizations.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    pages = [
      HomePage(),
      OrdersPage(),
      FavoritePage(),
      ProfilePage(),
    ];
    currentPage = pages[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (value) {
          setState(() {
            currentTab = value;
            currentPage = pages[value];
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            label: AppLocalizations.of(context).translate(AppStrings.homeTab),
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.shoppingCart),
            label: AppLocalizations.of(context).translate(AppStrings.ordersTab),
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.favorite),
            label:
                AppLocalizations.of(context).translate(AppStrings.favoriteTab),
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.person),
            label:
                AppLocalizations.of(context).translate(AppStrings.profileTab),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
