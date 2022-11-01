import 'package:get/get.dart';

import '../controllers/progress_controller.dart';

class ProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgressController>(
      () => ProgressController(),
    );
  }
}
