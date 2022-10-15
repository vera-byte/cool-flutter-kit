/*
 * @Author: vera
 * @Date: 2022-10-10 21:09:05
 * @Filename: {{put-file-name}}
 * @FilePath: /maile_app_flutter/lib/app/widgets/ml_webview.dart
 * @LastEditTime: 2022-10-11 11:54:33
 * @Description: 描述信息
 * @Version: 1.0.0
 */
import 'dart:convert';

import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MLWebView extends StatefulWidget {
  String title;
  String url;
  MLWebView({Key? key, this.title = "加载中...", required this.url})
      : super(key: key);

  @override
  _MLWebViewState createState() => _MLWebViewState();
}

class _MLWebViewState extends State<MLWebView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        navigationDelegate: (NavigationRequest request) {
          print('navigationDelegate: ${request.url}');
          return NavigationDecision.navigate;
        },
        onPageFinished: (controller) {
          // 设置标题
          _controller.getTitle().then(
                (value) => setState(() => widget.title = value!),
              );
          _controller;
        },
        javascriptChannels: <JavascriptChannel>{
          JavascriptChannel(
            name: 'MLApp',
            onMessageReceived: (JavascriptMessage message) {
              print(jsonDecode(message.message));
              BrnToast.show(jsonDecode(message.message).toString(), context);
            },
          )
        },
      ),
    );
  }
}
