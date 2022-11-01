/*
 * @Author: Vera
 * @Date: 2022-10-15 22:15:42
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/request/service/api_service.dart
 * @LastEditTime: 2022-10-19 16:02:13
 * @Description: 描述信息
 * @Version: 1.0.0
 */

import 'package:chopper/chopper.dart';
import 'package:logging/logging.dart';

part "api_service.chopper.dart";

@ChopperApi(baseUrl: "/mall")
abstract class MaileCarService extends ChopperService {
  // @Get()
  // Future<Response> getPosts();

  @Post(path: "/car/ground")
  Future<Response> getCarList(@Body() Map<String, dynamic> body);

  // @Post()
  // Future<Response> postPost(
  //   @Body() Map<String, dynamic> body,
  // );

  static MaileCarService create() {
    final client = ChopperClient(
        baseUrl: "https://api.mailecar.com",
        services: [_$MaileCarService()],
        interceptors: [
          const HeadersInterceptor(
              {'Cache-Control': 'no-cache', 'App-Version': '1.0'}),
          HttpLoggingInterceptor(),
          CurlInterceptor(),
          (Response res) async {
            String temp =
                '${[res.base.request!.method]} ${res.base.request!.url}';
            print(temp);

            if (res.statusCode == 404) {
              chopperLogger.severe('[404] 接口未找到 $temp');
            }
            if (res.statusCode == 502) chopperLogger.severe('[502] 服务异常 $temp');
            return res;
          },
        ],
        converter: const JsonConverter());
    return _$MaileCarService(client);
  }
}
