import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/captcha_controller.dart';

class CaptchaView extends GetView<CaptchaController> {
  const CaptchaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CaptchaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CaptchaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
