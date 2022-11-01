import 'package:get/get.dart';

import '../controllers/load_more_controller.dart';

class LoadMoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoadMoreController>(
      () => LoadMoreController(),
    );
  }
}
