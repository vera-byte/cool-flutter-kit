import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/action_sheet_controller.dart';

class ActionSheetView extends GetView<ActionSheetController> {
  const ActionSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActionSheetView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ActionSheetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
