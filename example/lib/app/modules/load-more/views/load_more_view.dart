import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/load_more_controller.dart';

class LoadMoreView extends GetView<LoadMoreController> {
  const LoadMoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadMoreView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoadMoreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
