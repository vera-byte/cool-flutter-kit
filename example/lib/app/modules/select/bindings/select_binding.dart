import 'package:get/get.dart';

import '../controllers/select_controller.dart';

class SelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectController>(
      () => SelectController(),
    );
  }
}
