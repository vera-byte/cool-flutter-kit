import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rete_controller.dart';

class ReteView extends GetView<ReteController> {
  const ReteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
