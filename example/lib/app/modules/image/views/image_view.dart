import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/image_controller.dart';

class ImageView extends GetView<ImageController> {
  const ImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
