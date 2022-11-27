import 'package:get/get.dart';

import '../controllers/alex_grid_controller.dart';

class AlexGridBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlexGridController>(
      () => AlexGridController(),
    );
  }
}
