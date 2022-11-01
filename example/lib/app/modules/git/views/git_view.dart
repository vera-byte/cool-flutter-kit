import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maile_app_flutter/app/widgets/ml_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/git_controller.dart';

class GitView extends GetView<GitController> {
  const GitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MLWebView(
      url: 'https://github.com/metoyun/cool-flutter-widget',
    ));
  }
}
