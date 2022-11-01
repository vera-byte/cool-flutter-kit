/*
 * @Author: Vera
 * @Date: 2022-10-19 16:18:37
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/lib/src/config/app.dart
 * @LastEditTime: 2022-10-19 16:27:14
 * @Description: 描述信息
 * @Version: 1.0.0
 */
class AppCommonConfig {
  // 配置
  static Map get app => {
        "name": "COOL-FLUTTER",
        "desc": "UI",
        "wx": {
          /// 小程序
          "mini": {
            "appid": "",
          },

          /// 公众号
          "mp": {
            "appid": "",
            "debug": true,
          },

          /// App
          "app": {
            "appid": "",
          },
        }
      };
  // 调试
  static Map<String, dynamic> get test => {
        // 调试
        "test": {
          "token": "",
          "mock": false,
          "eps": true,
        },

        // 忽略
        "ignore": {
          "token": ["/app/user/login/wxMiniLogin"],
        },
      };
}
