import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'webview_javascript_bridge.dart';

abstract class CoolWebViewJsBridgeInterface {
  late final String url;
  late final JavascriptMode? javascriptMode;
  late final List<JavascriptChannel>? yourJavascriptChannels;
  late final List<WebViewJavaScriptBridge>? bridges;
  late final void Function(WebResourceError)? onWebResourceError;
  late final void Function(int)? onProgress;
  late final void Function(WebViewController)? onWebViewCreated;
  final List<WebViewCookie> initialCookies = const <WebViewCookie>[];
  late final FutureOr<NavigationDecision> Function(NavigationRequest)?
      navigationDelegate;
  late final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  /// 是否禁用支付通道
  late final bool isDisabledPayment;

  /// 是否禁用交互通道
  late final bool isDisabledInteract;

  /// 是否禁用路由通道
  late final bool isDisabledRouter;

  /// 是否禁用缓存通道
  late final bool isDisabledCache;

  /// 是否禁用授权通道
  late final bool isDisabledAuth;

  late final Function() getController;

  // const CoolWebViewJsBridgeInterface(
  //   this.url, {
  //   this.javascriptMode,
  //   this.navigationDelegate,
  //   this.yourJavascriptChannels,
  //   this.gestureRecognizers,
  //   this.bridges,
  //   this.onWebResourceError,
  //   this.onProgress,
  //   this.onWebViewCreated,
  //   this.isDisabledPayment = false,
  //   this.isDisabledInteract = false,
  //   this.isDisabledRouter = false,
  //   this.isDisabledCache = false,
  //   this.isDisabledAuth = false,
  // })
}
