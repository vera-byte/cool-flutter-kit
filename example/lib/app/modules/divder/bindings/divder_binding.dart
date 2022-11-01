import 'package:get/get.dart';

import '../controllers/divder_controller.dart';

class DivderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DivderController>(
      () => DivderController(),
    );
  }
}
