library cool_webview_jsbridge;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

import 'lib/webview_javascript_bridge.dart';

class CoolWebViewContainJavaBridge extends StatefulWidget {
  /// url
  final String url;
  final JavascriptMode? javascriptMode;
  final List<JavascriptChannel>? yourJavascriptChannels;
  final List<WebViewJavaScriptBridge>? bridges;
  final void Function(WebResourceError)? onWebResourceError;
  final void Function(int)? onProgress;
  final void Function(WebViewController)? onWebViewCreated;
  final List<WebViewCookie> initialCookies = const <WebViewCookie>[];
  final FutureOr<NavigationDecision> Function(NavigationRequest)?
      navigationDelegate;
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  /// 是否禁用支付通道
  final bool isDisabledPayment;

  /// 是否禁用交互通道
  final bool isDisabledInteract;

  /// 是否禁用路由通道
  final bool isDisabledRouter;

  /// 是否禁用缓存通道
  final bool isDisabledCache;

  /// 是否禁用授权通道
  final bool isDisabledAuth;

  const CoolWebViewContainJavaBridge(
    this.url, {
    Key? key,
    this.javascriptMode,
    this.navigationDelegate,
    this.yourJavascriptChannels,
    this.gestureRecognizers,
    this.bridges,
    this.onWebResourceError,
    this.onProgress,
    this.onWebViewCreated,
    this.isDisabledPayment = false,
    this.isDisabledInteract = false,
    this.isDisabledRouter = false,
    this.isDisabledCache = false,
    this.isDisabledAuth = false,
  }) : super(key: key);

  @override
  State<CoolWebViewContainJavaBridge> createState() => _CoolWebView();
}

class _CoolWebView extends State<CoolWebViewContainJavaBridge>
    with WebViewJavaScriptBridgeMixin {
  final _coolWebviewController = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    bridge.addMessageHandler(ClosureMessageHandler(
      resolver: (message, controller) => message.action == "tester",
      handler: (message, controller) {
        debugPrint("$message");
        return message;
      },
    ));
    widget.bridges;
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
      initialCookies: widget.initialCookies,
      navigationDelegate: widget.navigationDelegate,
      // onPageStarted: widget.onPageStarted,
      // onPageFinished: widget.onPageFinished,
      // debuggingEnabled: widget.debuggingEnabled,
      // gestureNavigationEnabled: widget.gestureNavigationEnabled,
      // userAgent: widget.userAgent,
      key: widget.key,
      javascriptMode: widget.javascriptMode ?? JavascriptMode.unrestricted,
      javascriptChannels: {
        /// =========CoolChanner Start=========
        /// 默认
        if (!widget.isDisabledPayment) coolChannelForBridge,

        /// 支付
        if (!widget.isDisabledPayment) coolChannelForBridgePayment,

        /// 交互
        if (!widget.isDisabledInteract) coolChannelForBridgeInteract,

        /// 路由
        if (!widget.isDisabledRouter) coolChannelForBridgeRouter,

        /// 缓存
        if (!widget.isDisabledCache) coolChannelForBridgeCache,

        /// 授权
        if (!widget.isDisabledAuth) coolChannelForBridgeAuth,

        /// =========CoolChanner End=========
        /// =========YourChanner Start=========

        ...?widget.yourJavascriptChannels

        /// =========YourChanner End=========
      },
      onWebViewCreated: widget.onWebViewCreated ??
          (controller) {
            _coolWebviewController.complete(controller);
            bridge.updateWebViewController(controller);
          },
      onWebResourceError: widget.onWebResourceError ??
          (e) {
            debugPrint('CoolOnWebResourceError:$e');
          },
      onProgress: widget.onProgress ??
          (progress) {
            debugPrint('CoolOnProgress:$progress');
          },
    );
  }

  @override
  void reassemble() {
    super.reassemble();
    _reload();
  }

  _reload() {
    _coolWebviewController.future.then((value) => value.reload());
  }
}
