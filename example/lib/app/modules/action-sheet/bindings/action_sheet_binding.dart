import 'package:get/get.dart';

import '../controllers/action_sheet_controller.dart';

class ActionSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActionSheetController>(
      () => ActionSheetController(),
    );
  }
}
