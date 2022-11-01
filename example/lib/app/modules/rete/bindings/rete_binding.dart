import 'package:get/get.dart';

import '../controllers/rete_controller.dart';

class ReteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReteController>(
      () => ReteController(),
    );
  }
}
