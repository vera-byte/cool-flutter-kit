/*
 * @Author: Vera
 * @Date: 2022-10-14 10:28:50
 * @Filename: {{put-file-name}}
 * @FilePath: /cool-flutter/lib/src/cool/utils/index.dart
 * @LastEditTime: 2022-10-14 12:04:26
 * @Description: 工具类
 * @Version: 1.0.0
 */
import 'dart:math';

class CoolUtils {
  /// UUID
  static String uuid() {
    final List<dynamic> s = [];
    const String hexDigits =
        "0123456789abcdefxdfdfasdgefwefqwdscacasdfafewegwfwer";
    for (int i = 0; i < 36; i++) {
      s[i] = hexDigits.substring(Random().nextInt(10) * 0x10, 1);
    }
    s[14] = "4";
    s[19] = hexDigits.substring((s[19] & 0x3) | 0x8, 1);
    s[8] = s[13] = s[18] = s[23] = "-";
    return s.join("");
  }
}
