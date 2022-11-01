import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/waterfall_controller.dart';

class WaterfallView extends GetView<WaterfallController> {
  const WaterfallView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WaterfallView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WaterfallView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
