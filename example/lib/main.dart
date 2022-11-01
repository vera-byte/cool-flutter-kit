/*
 * @Author: vera
 * @Date: 2022-10-10 17:17:17
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/main.dart
 * @LastEditTime: 2022-10-15 21:50:11
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'package:cool/cool.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:logging/logging.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  _setupLogging();
  runApp(
    GetMaterialApp(
      title: AppCommonConfig.app['name'],
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
