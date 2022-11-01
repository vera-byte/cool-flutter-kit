/*
 * @Author: Vera
 * @Date: 2022-10-19 16:09:00
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/lib/src/config/service.dart
 * @LastEditTime: 2022-10-19 16:21:02
 * @Description: 描述信息
 * @Version: 1.0.0
 */

import 'package:cool/cool.dart';

class ServiceConfig {
  // 基础请求地址
  static String get baseUrl {
    return EnvConfig.isDev
        ? "https://api.mailecar.com"
        : "https://api.mailecar.com";
  }
}
