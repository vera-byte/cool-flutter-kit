import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndexView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IndexView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
