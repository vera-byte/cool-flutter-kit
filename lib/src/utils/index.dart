import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
export './storage.dart';

// 是否安卓
Future<bool> isAndroid = DeviceInfoPlugin()
    .androidInfo
    .then((info) => true)
    .catchError((_) => false);

// 是否苹果
Future<bool> isIos =
    DeviceInfoPlugin().iosInfo.then((info) => true).catchError((_) => false);

// 是否小数
bool isDecimal(dynamic value) {
  return value is double;
}

// 首字母大写
String firstUpperCase(String value) {
  return value.replaceFirstMapped(
      RegExp(r'\b\w'), (match) => match.group(0)!.toUpperCase());
}

// 获取版本号
Future<String> getVersion() async {
  var deviceInfo = DeviceInfoPlugin();
  if (await isAndroid) {
    var androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  } else if (await isIos) {
    var iosInfo = await deviceInfo.iosInfo;
    return iosInfo.systemVersion;
  }
  return "Unknown";
}

String uuid() {
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

/// @desc 中国身份证因子验证 身份证号合法性验证,支持15位和18位身份证号,支持地址编码、出生日期、校验位验证
/// @param {String} code 身份证号
/// @return {Boolean} 是否通过验证
/// @example isIdCard('11010119900307766X')
bool idCard(String code) {
  if (code.length != 18) {
    return false;
  }
  const Map<int, String> city = {
    11: "北京",
    12: "天津",
    13: "河北",
    14: "山西",
    15: "内蒙古",
    21: "辽宁",
    22: "吉林",
    23: "黑龙江 ",
    31: "上海",
    32: "江苏",
    33: "浙江",
    34: "安徽",
    35: "福建",
    36: "江西",
    37: "山东",
    41: "河南",
    42: "湖北 ",
    43: "湖南",
    44: "广东",
    45: "广西",
    46: "海南",
    50: "重庆",
    51: "四川",
    52: "贵州",
    53: "云南",
    54: "西藏 ",
    61: "陕西",
    62: "甘肃",
    63: "青海",
    64: "宁夏",
    65: "新疆",
    71: "台湾",
    81: "香港",
    82: "澳门",
    91: "国外 "
  };
  RegExp reg = RegExp(
      r'/^d{6}(18|19|20)?d{2}(0[1-9]|1[012])(0[1-9]|[12]d|3[01])d{3}(d|X)$');
  if (code.isEmpty || !reg.hasMatch(code)) {
    return false;
  } else if (city[int.parse(code.substring(0, 2))] == null) {
    return false;
  } else {
    //18位身份证需要验证最后一位校验位
    if (code.length == 18) {
      List numList = code.split("");
      //∑(ai×Wi)(mod 11)
      //加权因子
      var factor = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
      //校验位
      var parity = [1, 0, "X", 9, 8, 7, 6, 5, 4, 3, 2];
      var sum = 0;
      var ai = 0;
      var wi = 0;
      for (var i = 0; i < 17; i++) {
        ai = numList[i];
        wi = factor[i];
        sum += ai * wi;
      }
      if (parity[sum % 11] != code[17]) {
        return false;
      }
    } else {
      return false;
    }
  }
  return true;
}

/// 验证手机号
bool isPhone(String phone) {
  RegExp reg = RegExp(r'/^1[3456789]\d{9}$/');
  return reg.hasMatch(phone);
}
