import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/text_controller.dart';

class TextView extends GetView<TextController> {
  const TextView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TextView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
