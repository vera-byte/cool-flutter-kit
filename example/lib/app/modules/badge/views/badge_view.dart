import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/badge_controller.dart';

class BadgeView extends GetView<BadgeController> {
  const BadgeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BadgeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BadgeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
