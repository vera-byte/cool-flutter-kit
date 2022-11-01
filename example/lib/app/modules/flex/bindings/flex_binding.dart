import 'package:get/get.dart';

import '../controllers/flex_controller.dart';

class FlexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlexController>(
      () => FlexController(),
    );
  }
}
