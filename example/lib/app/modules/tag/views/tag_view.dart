import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tag_controller.dart';

class TagView extends GetView<TagController> {
  const TagView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TagView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TagView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
