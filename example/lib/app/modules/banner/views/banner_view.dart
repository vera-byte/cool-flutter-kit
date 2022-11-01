import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/banner_controller.dart';

class BannerView extends GetView<BannerController> {
  const BannerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BannerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BannerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
