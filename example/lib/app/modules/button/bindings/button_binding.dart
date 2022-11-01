import 'package:get/get.dart';

import '../controllers/button_controller.dart';

class ButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonController>(
      () => ButtonController(),
    );
  }
}
