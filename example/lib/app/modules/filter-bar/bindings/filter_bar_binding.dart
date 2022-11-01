import 'package:get/get.dart';

import '../controllers/filter_bar_controller.dart';

class FilterBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterBarController>(
      () => FilterBarController(),
    );
  }
}
