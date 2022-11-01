import 'package:get/get.dart';

import '../controllers/radio_controller.dart';

class RadioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadioController>(
      () => RadioController(),
    );
  }
}
