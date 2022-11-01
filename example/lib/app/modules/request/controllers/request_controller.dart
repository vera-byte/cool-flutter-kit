/*
 * @Author: Vera
 * @Date: 2022-10-15 21:57:36
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/request/controllers/request_controller.dart
 * @LastEditTime: 2022-10-19 15:00:35
 * @Description: 描述信息
 * @Version: 1.0.0
 */

import 'package:get/get.dart';
import 'package:maile_app_flutter/app/modules/request/service/api_service.dart';

class RequestController extends GetxController {
  final res = "".obs;

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

  getPost() {
    MaileCarService.create().getCarList({
      "age": [],
      "brand": [],
      "carfactory": [],
      "carlevel": [],
      "carstruct": [],
      "cartype": [],
      "color": [],
      "country": [],
      "emission": [],
      "energy": [],
      "new": false,
      "page": 1,
      "price": [],
      "reduce": false,
      "sort": "time",
      "source": "",
      "tag": [],
      "th": false,
      "transmission": "",
      "wkm": []
    }).then((value) => res.value = value.body['data'].toString());
  }
}
