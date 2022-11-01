import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wechat_pay_controller.dart';

class WechatPayView extends GetView<WechatPayController> {
  const WechatPayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WechatPayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WechatPayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
