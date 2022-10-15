/*
 * @Author: Vera
 * @Date: 2022-10-15 13:25:38
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/home/views/home_view.dart
 * @LastEditTime: 2022-10-15 17:18:20
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 250, 1),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Container(
            padding:
                EdgeInsets.only(top: Get.mediaQuery.padding.top, bottom: 20),
            child: const Center(
              child: Text(
                "COOL-FLUTTER",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          ...controller.groupWidgetList.map(
            (e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    e.group,
                    style: const TextStyle(
                      color: Color.fromRGBO(153, 153, 153, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ...e.widgets.map(
                  (c) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Material(
                      elevation: 2,
                      shadowColor: const Color.fromRGBO(248, 248, 248, .4),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () => print(c.path),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                c.name,
                                style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Icon(Icons.keyboard_arrow_right_rounded)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
