import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/textarea_controller.dart';

class TextareaView extends GetView<TextareaController> {
  const TextareaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextareaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TextareaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
