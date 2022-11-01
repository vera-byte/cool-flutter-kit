import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

PersistentBottomNavBarItem NavBarItem({
  required IconData iconData,
  required String title,
}) {
  return PersistentBottomNavBarItem(
      icon: Icon(iconData, size: 20),
      title: title,
      // activeColorPrimary: ,
      // inactiveColorPrimary: Color.fromRGBO(187, 187, 187, 1),
      // activeColorSecondary: Theme.of(Get.context!).primaryColor,
      textStyle: const TextStyle(fontWeight: FontWeight.bold));
}

class MainController extends GetxController {
  List<PersistentBottomNavBarItem> listNavBar = [
    NavBarItem(iconData: FontAwesomeIcons.rocket, title: '首页'),
    NavBarItem(iconData: FontAwesomeIcons.github, title: '仓库'),
    NavBarItem(iconData: FontAwesomeIcons.user, title: '我的'),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
