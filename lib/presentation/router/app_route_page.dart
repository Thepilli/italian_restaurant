import 'package:get/get.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_binding.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_view.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/home_binding.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/home_view.dart';
import 'package:restaurant_delivery/presentation/pages/root_page/root_binding.dart';
import 'package:restaurant_delivery/presentation/pages/root_page/root_view.dart';
import 'package:restaurant_delivery/presentation/router/app_route_name.dart';

class AppRoutePage {
  static final routes = [
    GetPage(
      name: AppRouteName.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.root,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: AppRouteName.detail,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
