import 'package:get/get.dart';

import '../controllers/waterfall_controller.dart';

class WaterfallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaterfallController>(
      () => WaterfallController(),
    );
  }
}
