import 'package:food_delivery_app/presentation/presentation.dart';

class AppRoutes {
  static String homePage = '/home_page';
  static String mainScreen = '/main_screen';
  static String ordersPage = '/orders_page';
  static String favoritePage = '/favorite_page';
  static String profilePage = '/profile_page';

  static var routes = {
    mainScreen: (_) => MainScreen(),
    homePage: (_) => HomePage(),
    ordersPage: (_) => OrdersPage(),
    favoritePage: (_) => FavoritePage(),
    profilePage: (_) => ProfilePage(),
  };
}
