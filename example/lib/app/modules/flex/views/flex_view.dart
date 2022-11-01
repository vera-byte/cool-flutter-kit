import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flex_controller.dart';

class FlexView extends GetView<FlexController> {
  const FlexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FlexView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
