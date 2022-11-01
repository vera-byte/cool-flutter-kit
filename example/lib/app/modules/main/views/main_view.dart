import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maile_app_flutter/app/modules/git/views/git_view.dart';
import 'package:maile_app_flutter/app/modules/home/views/home_view.dart';
import 'package:maile_app_flutter/app/modules/user/views/user_view.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      items: controller.listNavBar,
      backgroundColor: Colors.white,
      screens: const [HomeView(), GitView(), UserView()],
    );
  }
}
