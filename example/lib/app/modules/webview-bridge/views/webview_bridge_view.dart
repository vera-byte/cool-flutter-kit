import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/webview_bridge_controller.dart';

class WebviewBridgeView extends GetView<WebviewBridgeController> {
  const WebviewBridgeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebviewBridgeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WebviewBridgeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
