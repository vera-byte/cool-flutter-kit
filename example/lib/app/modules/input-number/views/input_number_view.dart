import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/input_number_controller.dart';

class InputNumberView extends GetView<InputNumberController> {
  const InputNumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputNumberView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InputNumberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
