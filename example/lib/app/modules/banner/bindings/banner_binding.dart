import 'package:get/get.dart';

import '../controllers/banner_controller.dart';

class BannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BannerController>(
      () => BannerController(),
    );
  }
}
