class AppCommonConfig {
  // 配置
  static Map get app => {
        "name": "COOL-FLUTTER",
        "desc": "",
      };
  // 调试
  static Map<String, dynamic> get test => {
        // 调试
        "test": {
          "token": "",
          "mock": false,
          "eps": true,
        },
      };
  //
  static Map<String, dynamic> get ignore => {
        "token": ["/app/user/login/wxMiniLogin"],
      };
}
