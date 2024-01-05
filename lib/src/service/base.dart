// import 'package:lodash_dart/lodash_dart.dart';
// import '../../config.dart'; // 假设你有一个类似的 Dart 配置文件
// import 'request.dart'; // 假设你有一个 Dart 请求函数
class ReqOptions {
  Map<String, dynamic>? params;
  late final dynamic data;
  final String url;
  final String method;
  final bool? proxy;
  final Map<String, dynamic>? headers;

  ReqOptions({
    required this.url,
    this.params,
    this.data,
    this.method = "GET",
    this.proxy,
    this.headers,
  });
}

class Service {
  final String namespace;
  final String url;

  Service({
    required this.namespace,
    required this.url,
  });

  // Dart 不支持类似 TypeScript 的装饰器，因此你需要用不同的方式来实现相同的功能
}

class BaseService {
  String? namespace;
  String? url;
  String? proxy;

  BaseService({this.namespace, this.proxy, this.url});

  Future<dynamic> request(ReqOptions opt) async {
    opt.params ??= {};

    String ns = "";

    const isDev = false;
    // if (isDev) {
    //   ns = this.proxy ?? config['baseUrl'];
    // } else {
    //   ns = opt.proxy ? opt.url : config['baseUrl'];
    // }

    // 拼接前缀
    if (namespace != null) {
      ns += "/$namespace";
    }

    // 处理地址
    if (proxy == null) {
      url = ns + opt.url;
    }

    // 处理参数
    opt.data = (opt.method.toUpperCase() == "POST") ? opt.data : opt.params;

    return request(opt);
  }

  Future<dynamic> list(dynamic data) async {
    return request(ReqOptions(url: "/list", method: "POST", data: data));
  }

  Future<dynamic> page(dynamic data) async {
    return request(ReqOptions(url: "/page", method: "POST", data: data));
  }

  Future<dynamic> info(Map<String, dynamic> params) async {
    return request(ReqOptions(url: "/info", params: params));
  }

  Future<dynamic> update(dynamic data) async {
    return request(ReqOptions(url: "/update", method: "POST", data: data));
  }

  Future<dynamic> delete(dynamic data) async {
    return request(ReqOptions(url: "/delete", method: "POST", data: data));
  }

  Future<dynamic> add(dynamic data) async {
    return request(ReqOptions(url: "/add", method: "POST", data: data));
  }
}
