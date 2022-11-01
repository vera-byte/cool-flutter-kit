import 'package:get/get.dart';

import '../controllers/top_bar_controller.dart';

class TopBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopBarController>(
      () => TopBarController(),
    );
  }
}
