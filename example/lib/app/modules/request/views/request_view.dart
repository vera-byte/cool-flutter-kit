/*
 * @Author: Vera
 * @Date: 2022-10-15 21:15:53
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/request/views/request_view.dart
 * @LastEditTime: 2022-10-16 00:47:03
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/request_controller.dart';

class RequestView extends GetView<RequestController> {
  const RequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('请求'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            BrnBigGhostButton(
              onTap: () => controller.getPost(),
              title: "请求",
            ),
            Obx(() => Text(controller.res.value))
          ],
        ));
  }
}
