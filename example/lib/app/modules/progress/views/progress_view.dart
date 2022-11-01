import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/progress_controller.dart';

class ProgressView extends GetView<ProgressController> {
  const ProgressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProgressView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
