import 'package:get/get.dart';

import '../controllers/slider_controller.dart';

class SliderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SliderController>(
      () => SliderController(),
    );
  }
}
