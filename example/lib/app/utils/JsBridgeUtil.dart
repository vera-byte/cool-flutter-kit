// import 'dart:convert';

// import 'package:maile_app_flutter/app/utils/JsBridge.dart';

// class JsBridgeUtil {
//   /// 将json字符串转化成对象
//   static JsBridge parseJson(String jsonStr) {
//     JsBridge jsBridgeModel = JsBridge.fromMap(jsonDecode(jsonStr));
//     return jsBridgeModel;
//   }

//   /// 向H5开发接口调用
//   static executeMethod(context, JsBridge jsBridge) async {
//     print(jsBridge);
//     // if (jsBridge.method == 'openWeChatApp') {
//     //   /// 先检测是否已安装微信
//     //   bool _isWechatInstalled = await fluwx.isWeChatInstalled();
//     //   if (!_isWechatInstalled) {
//     //     toast.show(context, '您没有安装微信');
//     //     jsBridge.error?.call();
//     //     return;
//     //   }
//     //   fluwx.openWeChatApp();
//     //   jsBridge.success?.call();
//     // }
//   }
// }
