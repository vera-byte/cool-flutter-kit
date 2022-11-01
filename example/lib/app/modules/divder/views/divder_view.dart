import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/divder_controller.dart';

class DivderView extends GetView<DivderController> {
  const DivderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DivderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DivderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
