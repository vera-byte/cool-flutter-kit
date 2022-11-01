import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/filter_bar_controller.dart';

class FilterBarView extends GetView<FilterBarController> {
  const FilterBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterBarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FilterBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
