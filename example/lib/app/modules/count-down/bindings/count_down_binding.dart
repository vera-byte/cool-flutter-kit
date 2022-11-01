import 'package:get/get.dart';

import '../controllers/count_down_controller.dart';

class CountDownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountDownController>(
      () => CountDownController(),
    );
  }
}
