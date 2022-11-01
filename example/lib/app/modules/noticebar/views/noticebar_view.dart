import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/noticebar_controller.dart';

class NoticebarView extends GetView<NoticebarController> {
  const NoticebarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoticebarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NoticebarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
