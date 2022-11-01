import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/card_controller.dart';

class CardView extends GetView<CardController> {
  const CardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
