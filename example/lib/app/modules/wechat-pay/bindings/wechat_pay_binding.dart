import 'package:get/get.dart';

import '../controllers/wechat_pay_controller.dart';

class WechatPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WechatPayController>(
      () => WechatPayController(),
    );
  }
}
