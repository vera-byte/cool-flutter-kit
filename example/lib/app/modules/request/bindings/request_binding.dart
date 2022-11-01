import 'package:get/get.dart';

import '../controllers/request_controller.dart';

class RequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestController>(
      () => RequestController(),
    );
  }
}
