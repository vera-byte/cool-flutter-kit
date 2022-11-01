import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/switch_controller.dart';

class SwitchView extends GetView<SwitchController> {
  const SwitchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SwitchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
