import 'dart:typed_data';

import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:ui' as ui;
import 'package:get/get.dart';

import '../controllers/posters_controller.dart';

class PostersView extends GetView<PostersController> {
  const PostersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PostersView'),
          centerTitle: true,
        ),
        body: ListView(
          children: [],
        ));
  }
}
