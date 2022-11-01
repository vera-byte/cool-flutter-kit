import 'package:get/get.dart';

import '../controllers/grid_controller.dart';

class GridBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridController>(
      () => GridController(),
    );
  }
}
