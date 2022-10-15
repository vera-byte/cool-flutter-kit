import 'package:get/get.dart';

import '../modules/demo/bindings/demo_binding.dart';
import '../modules/demo/views/demo_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/index/bindings/index_binding.dart';
import '../modules/index/views/index_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

/*
 * @Author: vera
 * @Date: 2022-10-10 17:19:24
 * @Filename: {{put-file-name}}
 * @FilePath: /maile_app_flutter/lib/app/routes/app_pages.dart
 * @LastEditTime: 2022-10-11 11:58:52
 * @Description: 描述信息
 * @Version: 1.0.0
 */

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
      name: _Paths.DEMO,
      page: () => const DemoView(),
      binding: DemoBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => const IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
  ];
}
