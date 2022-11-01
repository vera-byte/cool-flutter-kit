import 'package:get/get.dart';

import '../controllers/tag_controller.dart';

class TagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TagController>(
      () => TagController(),
    );
  }
}
