/*
 * @Author: Vera
 * @Date: 2022-10-15 21:30:44
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/example/lib/app/modules/request/service/model_response.dart
 * @LastEditTime: 2022-10-15 21:59:35
 * @Description: 描述信息
 * @Version: 1.0.0
 */

abstract class Result<T> {}

class Success<T> extends Result<T> {
  final T value;

  Success(this.value);
}

class Error<T> extends Result<T> {
  final Exception exception;

  Error(this.exception);
}
