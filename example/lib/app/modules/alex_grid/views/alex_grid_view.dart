import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/alex_grid_controller.dart';

class AlexGridView extends GetView<AlexGridController> {
  const AlexGridView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlexGridView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AlexGridView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
