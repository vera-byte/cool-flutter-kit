import 'package:get/get.dart';

import '../controllers/switch_controller.dart';

class SwitchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwitchController>(
      () => SwitchController(),
    );
  }
}
