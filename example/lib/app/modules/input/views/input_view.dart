import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/input_controller.dart';

class InputView extends GetView<InputController> {
  const InputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InputView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
