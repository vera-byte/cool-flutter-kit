import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ali_pay_controller.dart';

class AliPayView extends GetView<AliPayController> {
  const AliPayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AliPayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AliPayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
