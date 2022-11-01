import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/radio_controller.dart';

class RadioView extends GetView<RadioController> {
  const RadioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RadioView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
