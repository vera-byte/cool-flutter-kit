import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check_box_controller.dart';

class CheckBoxView extends GetView<CheckBoxController> {
  const CheckBoxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBoxView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CheckBoxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
