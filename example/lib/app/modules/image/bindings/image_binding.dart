import 'package:get/get.dart';

import '../controllers/image_controller.dart';

class ImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageController>(
      () => ImageController(),
    );
  }
}
