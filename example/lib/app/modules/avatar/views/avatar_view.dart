import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/avatar_controller.dart';

class AvatarView extends GetView<AvatarController> {
  const AvatarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AvatarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
