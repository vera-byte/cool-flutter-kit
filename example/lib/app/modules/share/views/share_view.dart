import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/share_controller.dart';

class ShareView extends GetView<ShareController> {
  const ShareView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShareView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShareView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
