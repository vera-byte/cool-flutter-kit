import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/confirm_controller.dart';

class ConfirmView extends GetView<ConfirmController> {
  const ConfirmView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConfirmView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ConfirmView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
