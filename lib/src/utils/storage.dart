import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static const String suffix = "_deadtime";

  static Future<dynamic> get(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  static Future<Map<String, dynamic>> info() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    final Map<String, dynamic> data = {};

    for (var key in keys) {
      data[key] = prefs.get(key);
    }

    return data;
  }

  static Future<void> set(String key, dynamic value, [int? expires]) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value.toString());

    if (expires != null) {
      final int deadline =
          DateTime.now().millisecondsSinceEpoch + expires * 1000;
      await prefs.setInt('$key$suffix', deadline);
    }
  }

  static Future<bool> isExpired(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final int? deadline = prefs.getInt('$key$suffix');
    return deadline != null &&
        deadline - DateTime.now().millisecondsSinceEpoch <= 0;
  }

  static Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<dynamic> once(String key) async {
    final value = await get(key);
    await remove(key);
    return value;
  }
}
