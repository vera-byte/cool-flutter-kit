import 'package:get/get.dart';

import '../controllers/popup_controller.dart';

class PopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopupController>(
      () => PopupController(),
    );
  }
}
