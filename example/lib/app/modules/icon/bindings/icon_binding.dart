import 'package:get/get.dart';

import '../controllers/icon_controller.dart';

class IconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IconController>(
      () => IconController(),
    );
  }
}
