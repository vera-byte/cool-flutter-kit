import 'package:get/get.dart';

import '../controllers/confirm_controller.dart';

class ConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmController>(
      () => ConfirmController(),
    );
  }
}
