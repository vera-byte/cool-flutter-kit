import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/time_line_controller.dart';

class TimeLineView extends GetView<TimeLineController> {
  const TimeLineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeLineView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TimeLineView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
