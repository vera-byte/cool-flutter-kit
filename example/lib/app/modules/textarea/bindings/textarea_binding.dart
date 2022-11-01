import 'package:get/get.dart';

import '../controllers/textarea_controller.dart';

class TextareaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextareaController>(
      () => TextareaController(),
    );
  }
}
