import 'package:food_app/presentation/home/screen/home_page.dart';

import 'package:food_app/presentation/pages/order_page.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String homepage = "/homepage";
  static const String orderpage = "/orderpage";

  static List<GetPage> routes = [
    GetPage(name: homepage, page: () => HomePage()),
    GetPage(name: orderpage, page: () => OrderPage()),
  ];
}
