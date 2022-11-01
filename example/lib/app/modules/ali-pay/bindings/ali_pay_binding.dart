import 'package:get/get.dart';

import '../controllers/ali_pay_controller.dart';

class AliPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AliPayController>(
      () => AliPayController(),
    );
  }
}
