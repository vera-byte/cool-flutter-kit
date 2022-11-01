import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/top_bar_controller.dart';

class TopBarView extends GetView<TopBarController> {
  const TopBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopBarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TopBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
