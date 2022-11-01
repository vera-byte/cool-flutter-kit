import 'package:get/get.dart';

import '../controllers/badge_controller.dart';

class BadgeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BadgeController>(
      () => BadgeController(),
    );
  }
}
