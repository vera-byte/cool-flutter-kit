import 'package:get/get.dart';

import '../controllers/check_box_controller.dart';

class CheckBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckBoxController>(
      () => CheckBoxController(),
    );
  }
}
