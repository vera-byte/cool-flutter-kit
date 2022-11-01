import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/slider_controller.dart';

class SliderView extends GetView<SliderController> {
  const SliderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SliderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
