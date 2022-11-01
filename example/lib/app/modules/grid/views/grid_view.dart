import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/grid_controller.dart';

class GridView extends GetView<GridController> {
  const GridView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GridView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
