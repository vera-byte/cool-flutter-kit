import 'package:get/get.dart';

import '../controllers/card_controller.dart';

class CardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CardController>(
      () => CardController(),
    );
  }
}
