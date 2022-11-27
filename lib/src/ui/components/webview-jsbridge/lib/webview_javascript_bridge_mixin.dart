part of webview_javascript_bridge;

mixin WebViewJavaScriptBridgeMixin<T extends StatefulWidget> on State<T> {
  /// the bridge for webview and javascript
  late final WebViewJavaScriptBridge bridge = WebViewJavaScriptBridge();

  /// the dependency channel for bridge
  late final JavascriptChannel coolChannelForBridge = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'default',
  );
  // 支付
  late final JavascriptChannel coolChannelForBridgePayment = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'payment',
  );

  // 交互
  late final JavascriptChannel coolChannelForBridgeInteract = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'interact',
  );

  // 路由
  late final JavascriptChannel coolChannelForBridgeRouter = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'router',
  );

  // 缓存
  late final JavascriptChannel coolChannelForBridgeCache = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'cache',
  );

  // 授权
  late final JavascriptChannel coolChannelForBridgeAuth = JavascriptChannel(
    onMessageReceived: (JavascriptMessage message) {
      bridge.receiveMessage(message);
    },
    name: 'auth',
  );
}
