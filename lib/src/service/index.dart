import 'base.dart';
export 'request.dart'; // 假设你有一个 Dart 版本的 request.dart

class Service {
  final BaseService _baseService = BaseService();

  dynamic request(ReqOptions options) {
    return _baseService.request(options);
  }
}
