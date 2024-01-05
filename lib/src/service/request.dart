// import 'package:dio/dio.dart';
// import '../store.dart'; // Dart 版本的 store 文件
// import '../router.dart'; // Dart 版本的 router 文件
// import '../../config.dart'; // Dart 版本的配置文件
// import '../../utils/storage.dart'; // Dart 版本的 storage 工具

// 请求队列
import 'package:dio/dio.dart';
import 'package:module_common_library/src/config/app.dart';
import 'package:module_common_library/src/utils/storage.dart';

import 'base.dart';

List<dynamic> requests = [];

// Token 是否刷新中
bool isRefreshing = false;

// 创建 Dio 实例
var dio = Dio();

Future<dynamic> request(ReqOptions options) async {
  // 获取用户信息
  // final user = useStore();

  // 标识 user.token ??
  String authorization = '';

  // 忽略标识
  for (var e in AppCommonConfig.ignore['token']) {
    if (options.url.contains(e)) {
      authorization = '';
    }
  }

  if (true) {
    print('[${options.method}] ${options.url}');
  }

  // 继续请求
  dynamic next() async {
    try {
      var response = await dio.request(
        options.url,
        data: options.data,
        options: Options(
          method: options.method,
          headers: {
            'Authorization': authorization,
            ...?options.headers,
          },
        ),
      );

      var code = response.data['code'];
      var data = response.data['data'];
      var message = response.data['message'];

      if (response.statusCode == 401) {
        // if (router.info()?.path == router.pages.login) {
        throw Exception(message);
        // } else {
        //   user.logout();
        // }
      }

      if (response.statusCode == 502) {
        throw Exception('服务异常');
      }

      if (response.statusCode == 404) {
        throw Exception('[404] ${options.url}');
      }

      if (response.statusCode == 200) {
        switch (code) {
          case 1000:
            return data;
          default:
            throw Exception('$message, $code');
        }
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  // 刷新token处理
  if (!options.url.contains('refreshToken')) {
    if (authorization.isNotEmpty) {
      if (await Storage.isExpired('token')) {
        if (await Storage.isExpired('refreshToken')) {
          // return user.logout();
        }

        if (!isRefreshing) {
          isRefreshing = true;
          try {
            // await user.refreshToken();
            var token = "";
            for (var cb in requests) {
              cb(token);
            }
            requests.clear();
            isRefreshing = false;
          } catch (e) {
            throw Exception(e.toString());
          }
        }

        return Future(() {
          requests.add((String token) async {
            authorization = token;
            await next();
          });
        });
      }
    }
  }

  return next();
}
