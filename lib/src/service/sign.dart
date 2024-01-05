import 'dart:convert';
import 'package:crypto/crypto.dart';

Map<String, dynamic> useSign(Map<String, dynamic> params) {
  final timestamp = DateTime.now().millisecondsSinceEpoch;

  List<String> arr = ['timestamp=$timestamp'];

  params.forEach((key, value) {
    arr.add('$key=${Uri.encodeComponent(value.toString())}');
  });

  arr.sort();

  final sign = md5.convert(utf8.encode(arr.join('&'))).toString();

  return {
    'timestamp': timestamp,
    'sign': sign,
  };
}
