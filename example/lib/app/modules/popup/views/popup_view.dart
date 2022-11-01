import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/popup_controller.dart';

class PopupView extends GetView<PopupController> {
  const PopupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PopupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
