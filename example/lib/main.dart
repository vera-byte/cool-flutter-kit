/*
 * @Author: vera
 * @Date: 2022-10-10 17:17:17
 * @Filename: {{put-file-name}}
 * @FilePath: /maile_app_flutter/lib/main.dart
 * @LastEditTime: 2022-10-10 20:51:53
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
