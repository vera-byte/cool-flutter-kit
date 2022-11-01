import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/icon_controller.dart';

class IconView extends GetView<IconController> {
  const IconView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IconView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
