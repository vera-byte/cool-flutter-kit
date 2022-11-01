import 'package:get/get.dart';

import '../controllers/git_controller.dart';

class GitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GitController>(
      () => GitController(),
    );
  }
}
