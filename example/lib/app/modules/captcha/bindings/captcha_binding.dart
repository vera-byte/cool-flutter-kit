import 'package:get/get.dart';

import '../controllers/captcha_controller.dart';

class CaptchaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaptchaController>(
      () => CaptchaController(),
    );
  }
}
