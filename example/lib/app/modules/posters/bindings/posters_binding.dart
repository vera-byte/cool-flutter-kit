import 'package:get/get.dart';

import '../controllers/posters_controller.dart';

class PostersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostersController>(
      () => PostersController(),
    );
  }
}
