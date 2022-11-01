import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loading_controller.dart';

class LoadingView extends GetView<LoadingController> {
  const LoadingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoadingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
