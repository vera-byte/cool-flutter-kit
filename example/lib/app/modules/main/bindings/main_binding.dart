import 'package:get/get.dart';
import 'package:maile_app_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:maile_app_flutter/app/modules/user/controllers/user_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<UserController>(
      () => UserController(),
    );
  }
}
