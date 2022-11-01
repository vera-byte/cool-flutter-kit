import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/count_down_controller.dart';

class CountDownView extends GetView<CountDownController> {
  const CountDownView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CountDownView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CountDownView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
