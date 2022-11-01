import 'package:get/get.dart';

import '../controllers/input_number_controller.dart';

class InputNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputNumberController>(
      () => InputNumberController(),
    );
  }
}
