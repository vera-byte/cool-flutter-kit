import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_controller.dart';

class SelectView extends GetView<SelectController> {
  const SelectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SelectView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
