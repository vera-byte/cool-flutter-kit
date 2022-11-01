import 'package:get/get.dart';

import '../controllers/time_line_controller.dart';

class TimeLineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimeLineController>(
      () => TimeLineController(),
    );
  }
}
