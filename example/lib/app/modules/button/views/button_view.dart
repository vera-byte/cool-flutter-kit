import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/button_controller.dart';

class ButtonView extends GetView<ButtonController> {
  const ButtonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ButtonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
