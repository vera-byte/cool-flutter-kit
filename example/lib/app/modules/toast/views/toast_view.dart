import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/toast_controller.dart';

class ToastView extends GetView<ToastController> {
  const ToastView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToastView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ToastView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
