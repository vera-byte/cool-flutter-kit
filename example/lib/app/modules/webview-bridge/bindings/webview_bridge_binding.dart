import 'package:get/get.dart';

import '../controllers/webview_bridge_controller.dart';

class WebviewBridgeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebviewBridgeController>(
      () => WebviewBridgeController(),
    );
  }
}
