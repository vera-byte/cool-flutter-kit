import 'package:get/get.dart';

import '../controllers/noticebar_controller.dart';

class NoticebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticebarController>(
      () => NoticebarController(),
    );
  }
}
