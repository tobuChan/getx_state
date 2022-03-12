import 'package:get/get.dart';

import 'package:getx_demo/app/modules/home/bindings/home_binding.dart';
import 'package:getx_demo/app/modules/home/views/home_view.dart';
import 'package:getx_demo/app/modules/second/bindings/second_binding.dart';
import 'package:getx_demo/app/modules/second/views/second_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SECOND,
      page: () => SecondView(),
      binding: SecondBinding(),
    ),
  ];
}
